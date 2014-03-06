class ActiveRecord::Relation
  def to_comma(style = :default)
    ActiveRecord::Base.uncached do
      Comma::Generator.new(self, style).run(:find_each)
    end
  end
end
