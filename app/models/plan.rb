class Plan
  PLANS = [:free, :premium]
  
  def self.options
<<<<<<< HEAD
    PLANS.map { |plan| [plan.capitalize, plan] }
=======
    PLANS.map { |plan| [plan.capitalize, plan]}
>>>>>>> eff0416e2aa769ee2885a41d4ec1ab475e8c8198
  end
end