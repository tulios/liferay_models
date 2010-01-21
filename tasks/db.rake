desc "Drop and create a liferay database structure"

namespace :db do

  task :create do
	  require 'helper/scripts'
	  Scripts.load
  end

end
