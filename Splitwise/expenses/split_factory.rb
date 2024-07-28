class SplitFactory
    def self.create_split_type split_type
        case split_type
        when :equal
            EqualSplit.new
        when :unequal_split
            UnequalSplit.new
        when :percentage_split
            PercentageSplit.new
        end
    end
end