select 
	pr.name_profile,
	pl.name_plan,
	pfr.name_form,
	pdt.*
into k_m_plan_display_tab_backup_29102025
from k_m_plan_display_tab pdt
join k_m_plan_display pd
	on pdt.id_plan_display = pd.id_plan_display
join k_profiles pr
	on pr.id_profile = pd.id_profile
join k_m_plans pl
	on pl.id_plan = pd.id_plan
join k_m_plans_form_report pfr
	on pfr.id = pdt.id_plan_form_report
