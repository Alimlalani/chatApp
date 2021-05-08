from django  import forms
from final_app.models import Name


class NewUser(forms.ModelForm):
    class Meta:
        model = Name
        fields = '__all__'


