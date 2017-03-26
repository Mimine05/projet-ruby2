module ApplicationHelper

	def is_entreprise()
		return true if @user.role == 'Entreprise'
	end

	def profil_complet()
		return true if (current_user.formations.exists? && current_user.experiences.exists? && current_user.interets.exists?) || (current_user.secteurs.exists? && current_user.offres.exists?)
	end

end
