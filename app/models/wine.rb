class Wine < ActiveRecord::Base
    
    VARIETALS = ['Cabernet Sauvignon', 'Malbec', 'Pinot Noir', 'Shiraz', 'Pinot Grigio', 'Chardonnay', 'Riesling']
    
    validates :name, :year, :country, :varietal, presence: true
    
    validates :year,
       numericality: { only_integer: true, greater_than_or_equal_to: 0 }
    
    validates :varietal,
        :inclusion => { :in => VARIETALS }
            
end
