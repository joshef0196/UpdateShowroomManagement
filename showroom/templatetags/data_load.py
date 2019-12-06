from django import template
from django.shortcuts import render, redirect
from django.db.models import Sum, Count, Q
from showroom import models
register = template.Library()

@register.filter(name='area')
def area_details(request, id):
    area_list = models.Area.objects.filter(branch_id = id, status = True).order_by("-id")
    return area_list

