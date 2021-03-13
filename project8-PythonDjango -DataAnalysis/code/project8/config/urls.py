from django.contrib import admin
from django.urls import path, include
from django.views.generic.base import TemplateView

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('accounts.urls')), # new
    path('accounts/', include('django.contrib.auth.urls')),

# paht("auth_views.LoginView.as_view(redirect_authenticated_user=True), name='login'),

]
