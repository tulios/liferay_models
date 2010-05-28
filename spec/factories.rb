require 'factory_girl'

module LiferayModels::Factories
  
  def self.load
    
    # COMPANY ===============================================================================
    Factory.sequence :webid do |n|
      "www.liferay_models.com/#{n}"
    end

    Factory.sequence :virtualhost do |n|
      "localhost/#{n}"
    end

    Factory.define :company do |f|
      f.webid { Factory.next :webid }
      f.key_ 'rO0ABXNyABRqYXZhLnNlY3VyaXR5LktleVJlcL35T7OImqVDAgAETAAJYWxnb3JpdGhtdAASTGphdmEvbGFuZy9TdHJpbmc7WwAHZW5jb2RlZHQAAltCTAAGZm9ybWF0cQB+AAFMAAR0eXBldAAbTGphdmEvc2VjdXJpdHkvS2V5UmVwJFR5cGU7eHB0AANERVN1cgACW0Ks8xf4BghU4AIAAHhwAAAACCzTMrBJibwvdAADUkFXfnIAGWphdmEuc2VjdXJpdHkuS2V5UmVwJFR5cGUAAAAAAAAAABIAAHhyAA5qYXZhLmxhbmcuRW51bQAAAAAAAAAAEgAAeHB0AAZTRUNSRVQ='
      f.virtualhost { Factory.next :virtualhost }
      f.mx 'www.liferay_models.com'
    end
    
    # USER ===================================================================================
    Factory.sequence :user_emailaddress do |n|
      "useremail#{n}@test.com"
    end

    Factory.sequence :user_screenname do |n|
      "screnname #{n}".to_url
    end

    Factory.define :user do |f|
      f.emailaddress {Factory.next :user_emailaddress}
      f.screenname {Factory.next :user_screenname}

      f.firstname 'Renan'
      f.middlename 'da'
      f.lastname 'Silva'
      f.createdate Time.now
      f.modifieddate Time.now

      f.company {|company| Company.count > 0 ? Company.first : company.association(:company)}
    end
    
    # GROUP==================================================================================
    Factory.sequence :group_name do |n|
      "Group Created by Factory #{n}"
    end
    
    Factory.sequence :group_livegroupid do |n|
      n
    end 
     
    Factory.define :group do |f|
      f.name Factory.next :group_name
      f.company {|company| Company.count > 0 ? Company.first : company.association(:company)}
      f.creatoruserid 0
      f.friendlyurl ""
      f.classnameid 0
      f.classpk 0
      f.livegroupid Factory.next :group_livegroupid
    end
    
    # TAG_VOCABULARY ========================================================================
    Factory.sequence :tag_vocabulary_name do |n|
      "tag-vocabulary-#{n}"
    end 

    Factory.define :tag_vocabulary do |f|
      f.createdate Time.now
      f.modifieddate Time.now
      f.name { Factory.next :tag_vocabulary_name }
      f.description 'tag-description'
      f.folksonomy true

      f.userid 0
      f.company {|company| Company.count > 0 ? Company.first : company.association(:company)}
      f.username ""
    end
    
    
    # TAG_ENTRY==============================================================================
    Factory.sequence :tag_name do |n|
      "tag-#{n}"
    end 

    Factory.define :tag_entry do |f|
      f.name { Factory.next :tag_name }
      f.createdate Time.now
      f.modifieddate Time.now

      f.vocabularyid 0
      f.company {|company| Company.count > 0 ? Company.first : company.association(:company)}
      f.username ""
      f.groupid 0
    end

    # TAG_ASSET =============================================================================
    Factory.define :tag_asset do |t|
      t.createdate Time.now
      t.modifieddate Time.now
      t.classnameid ClassName.find_user.id
      t.visible true
      t.startdate Time.now
      t.enddate Time.now + 1.day
      t.publishdate Time.now
      t.expirationdate Time.now + 1.day
      t.mimetype "text/html"
      t.title "Title"
      t.description "Description"
      t.summary "Summary"
      t.url "http://www.google.com"
      t.height 100
      t.width 100
      t.priority 0
      t.viewcount 1000
      
      t.classpk 0
      t.groupid 0
      t.company {|company| Company.count > 0 ? Company.first : company.association(:company)}
      t.userid 0
      t.username ""
    end
    
    true
  end
  
end

LiferayModels::Factories.load