class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    auditions.map(&:actor)
  end

  def locations
    auditions.map(&:location)
  end

  def lead
    lead_audition = auditions.find { |audition| audition.hired == true }
    lead_audition || 'no actor has been hired for this role'
  end

  def understudy
    understudy_audition = auditions.select { |audition| audition.hired == true }
    (understudy_audition && understudy_audition[1]) || 'no actor has been hired for understudy for this role'
  end
end
