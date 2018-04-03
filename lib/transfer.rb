class Transfer
      attr_reader :amount, :status, :sender, :receiver
  
   def initialize(sender, receiver, amount)
     @amount = amount
     @status = 'pending'
     @receiver = receiver
     @sender = sender
   end
   
   def valid?
     sender.valid?
     receiver.valid?
   end
   
   def execute_transaction
     binding.pry
    if valid?
     receiver.deposit(amount)
   else
     @status = 'rejected'
   end
end
