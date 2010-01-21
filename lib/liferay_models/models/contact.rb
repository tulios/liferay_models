module Liferay

  # Attributes:
  #   Integer:  contactid
  #   Integer:  companyid
  #   Integer:  userid
  #   String:   username
  #   DateTime: createdate
  #   DateTime: modifieddate
  #   Integer:  accountid
  #   Integer:  parentcontactid
  #   String:   firstname
  #   String:   middlename
  #   String:   lastname
  #   Integer:  prefixid
  #   Integer:  suffixid
  #   Boolean:  male
  #   DateTime: birthday
  #   String:   smssn
  #   String:   aimsn
  #   String:   facebooksn
  #   String:   icqsn
  #   String:   jabbersn
  #   String:   msnsn
  #   String:   myspacesn
  #   String:   skypesn
  #   String:   twittersn
  #   String:   ymsn
  #   String:   employeestatusid
  #   String:   employeenumber
  #   String:   jobtitle
  #   String:   jobclass
  #   String:   hoursofoperation
  #
  class Contact < Base
    set_table_name :contact_
    set_primary_key :contactid
    
    belongs_to :user, :foreign_key => 'userid'
    
    # Constructor
    
    def initialize(params = {})
      super(params)
      fill_default_values
    end
    
    # Methods
    
    def male?
      if male.nil? then return true end
    	male == true
    end
    
    def female?
    	male == false
    end
    
    def save
      fill_user_values
      super
    end
    
    # Private methods
    private
    
    def fill_user_values
      if user
    		self.firstname = user.firstname
    		self.middlename = user.middlename
    		self.lastname = user.lastname
    		self.companyid = user.companyid
      end
    end
    
    def fill_default_values
		  self.username ||= ''
      self.createdate   	 ||= Time.now
      self.modifieddate = Time.now
      self.parentcontactid ||= 0
      self.firstname       ||= ''
      self.middlename      ||= ''
      self.lastname        ||= ''

      self.prefixid         ||= 0
      self.suffixid         ||= 0
      self.male = male?
      self.smssn            ||= ''
      self.aimsn            ||= ''
      self.icqsn            ||= ''
      self.jabbersn         ||= ''
      self.msnsn            ||= ''
      self.skypesn          ||= ''
      self.ymsn             ||= ''
      self.employeestatusid ||= ''
      self.employeenumber   ||= ''
      self.jobtitle         ||= ''
      self.jobclass         ||= ''
      self.hoursofoperation ||= ''
      self.facebooksn       ||= ''
      self.myspacesn        ||= ''
      self.twittersn        ||= ''
	  end
	    
  end

end























