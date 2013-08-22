# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Branch.create(name:'Graham', fax:'123-456-1234', phone: '987-654-1234', manager: '1', addess:{address1:})
#ReferenceDatum.create(code: 'Owner', 		codeId:'1', codeSet:'JOB_TITLE', sortIndex: '1')
#ReferenceDatum.create(code: 'Manager', 	codeId:'2', codeSet:'JOB_TITLE', sortIndex: '2')
#ReferenceDatum.create(code: 'Cleaner', 	codeId:'3', codeSet:'JOB_TITLE', sortIndex: '3')
#ReferenceDatum.create(code: 'Waiter', 		codeId:'4', codeSet:'JOB_TITLE', sortIndex: '4')
#ReferenceDatum.create(code: 'Bartender', 	codeId:'5', codeSet:'JOB_TITLE', sortIndex: '5')

#pay_freqency=['Daily', 'Weekly','By Weekly','Monthly']
depeartments=['Marketing','Sales','Detailing']
i=1;
depeartments.each do |job|
	ReferenceDatum.create(code: job, codeId:i, codeSet:'DEPARTMENT', sortIndex: i)
		i+=1
end

