class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters
  
    def full_name
        fullname = "#{self.first_name} #{self.last_name}"
        fullname
    end

    def list_roles
        self.characters.map {|r| "#{r.name} - #{r.show.name}"}
    end
end