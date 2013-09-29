module ApplicationHelper

# Adding confirm message for association remove links.
# Original : f.hidden_field(:_destroy) + link_to(name, '#', :class => "remove_fields #{is_dynamic ? 'dynamic' : 'existing'}")
# Cocoon : ViewHelpers : link_to_remove_association
# link_to_remove_association(name, f, args={})
# name : to be displayed for link.
# f : form object
# args : defaults set to empty hash.
#        this holds the html options like onClick.
#        e.g : link_to_remove_association "name", f, { :onClick => "onclick();", onBlur => "onblur();" }
# extra_class : If no html options are passed from the view it will append 
#               the class to the class attribute of the link.
#               This will call the original functionality
# option_class : If class key added in view for styling purpose, this will add it to the args
# is_dynamic : is as per the original functionality. Lets us know if the records is new or existing.
def link_to_remove_association(name, f, args={})
  extra_class = (args.has_key?(:onclick) || args.has_key?(:onClick)) ? nil : "remove_fields"
  is_dynamic = f.object.new_record? ? 'dynamic' : 'existing'
  option_class = args.has_key?(:class) ? args[:class] : nil

  args.merge!({:class => "#{extra_class} #{is_dynamic} #{option_class}"})
  f.hidden_field(:_destroy) + link_to(name, '#this', args)
end


end
