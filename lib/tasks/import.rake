require 'csv'
require 'date'

namespace :import do
  desc 'Imports .csv file.'
  task csv: :environment do

    logger = Rails.logger

    import_file = ENV['file_path_and_name']
    if !import_file
      throw 'oh noes'
    end

    CSV.foreach(import_file, :headers => false) do |row|

      payment_method = PaymentMethod.find_by_name row[2].to_s
      if !payment_method
        payment_method = PaymentMethod.create
        payment_method.name = row[2].to_s
        payment_method.save

        puts "Saved payment method: #{payment_method.name}"
      end

      company = Company.find_by_name row[1].to_s
      if !company
        company = Company.create
        company.name = row[1].to_s
        company.save

        puts "Saved company: #{company.name}"
      end

      payment = Payment.create
      payment.date = Date.strptime(row[0].to_s, '%m/%d/%y')
      payment.amount = row[3].to_s
      payment.company = company
      payment.payment_method = payment_method
      payment.save

      puts "Added payment. Paid #{company.name} #{payment.amount} #{payment_method.name}"

    end

  end

end
