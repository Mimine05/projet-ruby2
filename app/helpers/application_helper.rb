module ApplicationHelper

	def is_entreprise()
		return true if current_user.role == 'Entreprise'
	end


end
