class Country < ApplicationRecord
    enum continent: { america: 1, europe: 2, oceania: 3, africa: 4, asia: 5 }
end
