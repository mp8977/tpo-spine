class Measurement < ActiveRecord::Base
  #validates :date,presence: true

  has_many :part_measurements

  #belongs_to :check_up
  #accepts_nested_attributes_for :part_measurements, :allow_destroy => true, reject_if: proc { |a| a['value'].blank? }

  accepts_nested_attributes_for :part_measurements


  def format_date
    sign_in_string = self.date.to_formatted_s(:rfc822)
    # dan
    dan = self.date.to_formatted_s(:rfc822)[0..2]
    if dan == 'Mon'
      rez = "Ponedeljek"
    elsif dan == 'Tue'
      rez = "Torek"
    elsif dan == 'Wed'
      rez = "Sreda"
    elsif dan == 'Thu'
      rez = "Cetrtek"
    elsif dan == 'Fri'
      rez = "Petek"
    elsif dan == 'Sat'
      rez = "Sobota"
    else
      rez = "Nedelja"
    end
    stevilka_dneva = self.date.to_formatted_s(:rfc822)[5..6]
    if stevilka_dneva[0] == '0'
      stevilka_dneva = stevilka_dneva[1]
    end
    # mesec
    mesec = self.date.to_formatted_s(:rfc822)[8..10]
    if mesec == 'Jan'
      rez = rez + ' ' + stevilka_dneva + '. januar' + sign_in_string[11..15]
    elsif mesec == 'Feb'
      rez = rez + ' ' + stevilka_dneva + '. februar' + sign_in_string[11..15]
    elsif mesec == 'Mar'
      rez = rez + ' ' + stevilka_dneva + '. marec' + sign_in_string[11..15]
    elsif mesec == 'Apr'
      rez = rez + ' ' + stevilka_dneva + '. april' + sign_in_string[11..15]
    elsif mesec == 'May'
      rez = rez + ' ' + stevilka_dneva + '. maj' + sign_in_string[11..15]
    elsif mesec == 'Jun'
      rez = rez + ' ' + stevilka_dneva + '. junij' + sign_in_string[11..15]
    elsif mesec == 'Jul'
      rez = rez + ' ' + stevilka_dneva + '. julij' + sign_in_string[11..15]
    elsif mesec == 'Aug'
      rez = rez + ' ' + stevilka_dneva + '. avgust' + sign_in_string[11..15]
    elsif mesec == 'Sep'
      rez = rez + ' ' + stevilka_dneva + '. september' + sign_in_string[11..15]
    elsif mesec == 'Oct'
      rez = rez + ' ' + stevilka_dneva + '. oktober' + sign_in_string[11..15]
    elsif mesec == 'Nov'
      rez = rez + ' ' + stevilka_dneva + '. november' + sign_in_string[11..15]
    else
      rez = rez + ' ' + stevilka_dneva + '. december' + sign_in_string[11..15]
    end
    return rez
  end
end
