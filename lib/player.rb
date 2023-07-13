class Player
    attr_accessor :first_name,
                :last_name,
                :monthly_cost,
                :contract_length,
                :total_cost,
                :nickname

    def initialize(name, monthly_cost, contract_length)
        @name = name
        @monthly_cost = monthly_cost
        @contract_length = contract_length
        @nickname = nickname
    end

    # split method to an array based on whtiespace
    # will take first 
    def first_name
          @name.split.first
    end
    # split method to an array based on whtiespace
    # will take last
    def last_name
            @name.split.last
    end

    def total_cost
        (@monthly_cost * contract_length)
    end

    def set_nickname!(nickname)
        @nickname = nickname
    end

end