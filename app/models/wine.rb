class Wine < ActiveRecord::Base
    
    has_many :log_entries, dependent: :destroy
    
    VARIETALS = ['Cabernet Sauvignon', 'Malbec', 'Pinot Noir', 'Bordeaux', 'Shiraz', 'Pinot Grigio', 'Chardonnay', 'Riesling']
    
    validates :name, :year, :country, :varietal, presence: true
    
    validates :year,
       numericality: { only_integer: true, greater_than_or_equal_to: 0 }
    
    validates :varietal,
        :inclusion => { :in => VARIETALS }
    
    def average_rating
        if log_entries.loaded?
            log_entries.map(&:rating).compact.average
        else
            log_entries.average(:rating)
        end
    end
            
end
