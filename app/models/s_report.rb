class SReport < ApplicationRecord
	belongs_to :user
	validate :validate_name
	validate :validate_ht
	validate :validate_wt
	validate :validate_pos
	validates_presence_of :school, :notes
	validate :validate_links

	def validate_name 
		if (name =~ /\A[A-Z][a-z]+ [A-Z][a-z]+\z/) != 0 
			errors.add(:name, "Invalid (capitalize first and last name)")
		end
	end

	def validate_ht 
		if (ht =~ /\A[5-7]'[0-9][0-1]?\z/) != 0 
			errors.add(:ht, "Invalid (5'0-7'11)")
		end
	end

	def validate_wt 
		if (wt =~ /\A[1-4][0-9][0-9]\z/) != 0 
			errors.add(:wt, "Invalid (100-499 lbs)")
		end
	end

	def validate_pos
		if (pos =~ /NT|DT|DE|MLB|CB|FS|SS|S|K|P|LS|H|KR|PR|QB|RB|FB|WR|TE|LT|RT|LG|RG|T|G|C/) != 0 
			errors.add(:pos, "Invalid (capitalize the  abbreviation)")
		end
	end

	def validate_links 
		if (links =~ /\AN\/A\z|(https:\/\/\S+)+/) != 0 
			errors.add(:links, "Invalid, use N/A if you do not want to provide a link")
		end
	end

	
end