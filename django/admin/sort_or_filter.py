"""
To sort/filter on create/modify templates
"""


def formfield_for_foreignkey(self, db_field, request, **kwargs):     
  if db_field.name == "client":         
    kwargs["queryset"] = Client.objects.order_by('name')     
  return super(TicketAdmin, self).formfield_for_foreignkey(db_field, request, **kwargs)