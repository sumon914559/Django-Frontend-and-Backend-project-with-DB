
from django.shortcuts import render
from products.models import Products_assing
from products.views import products_assing # pip install xhtml2pdf
from django.http import HttpResponse
from django.template.loader import get_template
from xhtml2pdf import pisa



# Create your views here.

def assign_list(request):

    assinglistData = Products_assing.objects.all().distinct('aaf_no')
    
    context = {
        'assingData': assinglistData
    }
    return render(request,'report/product_assing_list.html',context)





def pdf_view(request):
   
    #path = urlparse.urlsplit(uri).path
    #print path.split('/')[n]
    emp_id = request.GET.get('id')
    aAssProduct = Products_assing.objects.all().filter(emp_id_id = emp_id)[:1]
    assProduct = Products_assing.objects.all().filter(emp_id_id = emp_id)
    
    template_path = 'report/product_assing_details.html'
    context = {'assProductData': assProduct,'aProductData': aAssProduct }
    # Create a Django response object, and specify content_type as pdf
    response = HttpResponse(content_type='application/pdf')
    response['Content-Disposition'] = 'filename="products_assigned_details.pdf"'
    # find the template and render it.
    template = get_template(template_path)
    html = template.render(context)

    # create a pdf
    pisa_status = pisa.CreatePDF(html, dest=response)
      
    # if error then show some funy view
    if pisa_status.err:
       return HttpResponse('We had some errors <pre>' + html + '</pre>')
    return response
