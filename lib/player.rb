class Player
    attr_reader :first_name,
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

    def first_name
        if @name.split.count > 1
          @name.split.first
        end
    end

    def last_name
        if @name.split.count > 1
            @name.split.last
        end
    end

    def total_cost
        (@monthly_cost * contract_length)
    end

    def set_nickname!(nickname)
        @nickname = nickname
    end

end