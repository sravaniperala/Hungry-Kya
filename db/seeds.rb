# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cyborgs = ["Ankit Famiyal", "Sunil Sharma", "Alekhya Rudra", 
  "Anchal Jajodia", "Anjali Jaiswal", "Dalvir Singh Suri", "Kamal Namdeo", 
  "Keerthana M", "Kiran Chinnakonda", "Kumaresh Devarajan", "Kumuda Rao", "Kunal Singh",
   "Lenin R", "Mahesh M", "Nishant Goel", "Nishant Samel", "Rashmi Agarwal", "Saravana Kumar",
    "Satish Perala", "Sravani Perala", "Swaroop Sethumadhavan", "Vijayanand Nandam",
    "Vinod Kumar", "Yojana Menda", "Mano Bharati"]


  cyborgs.each { |name|
    User.find_or_create_by(name: name)
  }
# Ankit Famiyal <ankit.famiyal@cybrilla.com>,
# Sunil Sharma <sunil.sharma@cybrilla.com>,
# Alekhya Rudra <alekhya.rudra@cybrilla.com>,
# Anchal Jajodia <anchal.jajodia@cybrilla.com>,
# Anjali Jaiswal <anjali.jaiswal@cybrilla.com>,
# Dalvir Singh Suri <dalvir.suri@cybrilla.com>,
# Kamal Namdeo <kamal.namdeo@cybrilla.com>,
# Keerthana M <keerthana.m@cybrilla.com>,
# Kiran Chinnakonda <kiran.chinnakonda@cybrilla.com>,
# Kumaresh Devarajan <kumaresh.devarajan@cybrilla.com>,
# Kumuda Rao <kumuda.rao@cybrilla.com>,
# Kunal Singh <kunal.singh@cybrilla.com>,
# Lenin R <lenin@cybrilla.com>,
# Mahesh M <mahesh.m@cybrilla.com>,
# Nishant Goel <nishant.goel@cybrilla.com>,
# Nishant Samel <nishant.samel@cybrilla.com>,
# Rashmi Agarwal <rashmi.agarwal@cybrilla.com>,
# Saravana Kumar <saravana.kumar@cybrilla.com>,
# Satish Perala <satish@cybrilla.com>,
# Sravani Perala <sravani.p@cybrilla.com>,
# Swaroop Sethumadhavan <swaroop@cybrilla.com>,
# Vijayanand Nandam <vijay@cybrilla.com>,
# Vinod Kumar <vinod.kumar@cybrilla.com>
# Yojana Menda
# Mano Bharati