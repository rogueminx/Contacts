require('rspec')
require('pry')
require('contact')

describe("Contacts")do

  describe(".all") do
    it("is empty at first") do
      expect(Contacts.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves a new instance of contact") do
       contact = Contacts.new({:first_name=> "Anna Marie", :last_name=> "Smith", :job_title=> "Designer", :company=> "Epicodus", :contact_type=> "Co-worker"})
       contact.save()
       expect(Contacts.all()).to(eq([contact]))
     end
   end

   describe("#save") do
     it("add an address to already existing contact") do
        # contact = Contacts.new({:first_name=> "Anna Marie", :last_name=> "Smith", :job_title=> "Designer", :company=> "Epicodus", :contact_type=> "Co-worker"})
        # contact.save()
        new_address = Address.new({:street=> "123 B Street", :city=> "Portland", :state=> "OR", :zip=> "97302"})
        expect(new_address.save()).to(eq([new_address]))
      end
    end

    describe("#attach") do
      it("will combine and show the contact with the new address") do
         contact = Contacts.new({:first_name=> "Anna Marie", :last_name=> "Smith", :job_title=> "Designer", :company=> "Epicodus", :contact_type=> "Co-worker"})
         contact.save()
         new_address = Address.new({:street=> "123 B Street", :city=> "Portland", :state=> "OR", :zip=> "97302"})
         new_address.save()
         combined_info = Address.attach(contact, new_address)
         expect(combined_info.attach()).to(eq())
       end
     end

   describe("#print_contact") do
     it("returns contact info in a readable manner") do
        print_contact = Contacts.new({:first_name=> "Anna Marie", :last_name=> "Smith", :job_title=> "Designer", :company=> "Epicodus", :contact_type=> "Co-worker"})
        expect(print_contact.print_contact()).to(eq(["Anna Marie", "Smith", "Designer", "Epicodus", "Co-worker"]))
      end
    end



end
# describe("Item")do
#   before() do
#       Item.clear()
#     end
#
#   describe(".all") do
#     it("is empty at first") do
#       expect(Item.all()).to(eq([]))
#     end
#   end
#
#   describe("#save") do
#      it("saves an item to the list of items") do
#        item = Item.new("tacos", 1)
#        item2 = Item.new("pancakes", 2)
#        item.save()
#        item2.save()
#        expect(Item.all()).to(eq([item, item2]))
#      end
#    end
#
#    describe(".sort") do
#      it("sorts all items from the list based on rank") do
#        item = Item.new("tacos", 2)
#        item2 = Item.new("pancakes", 1)
#        item.save()
#        item2.save()
#        expect(Item.sort()).to(eq([item2, item]))
#      end
#    end
#
#    describe(".validate") do
#      it("ensures that you can't repeat input") do
#        item = Item.new("tacos", 2)
#        item.save()
#        item2 = Item.new("tacos", 1)
#        expect(Item.validate(item2.name)).to(eq("Duplicate. Enter something else."))
#      end
#    end
#
#    describe(".validate") do
#      it("ensures that you can't repeat input") do
#        item = Item.new("tacos", 2)
#        item.save()
#        item2 = Item.new("cupcake", 1)
#        expect(Item.validate(item2.name)).to(eq(false))
#      end
#    end
#
#    describe(".validaterank") do
#      it("ensures that you can't repeat rank input") do
#        item = Item.new("tacos", 2)
#        item.save()
#        item2 = Item.new("cupcake", 2)
#        expect(Item.validaterank(item2.rank)).to(eq("Duplicate. Enter something a different rank."))
#      end
#    end
#
#   describe(".clear") do
#     it("clears all items from the list") do
#       item = Item.new("tacos", 1)
#       item.save()
#       Item.clear()
#       expect(Item.all()).to(eq([]))
#     end
#   end
# end
