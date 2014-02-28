#!/home/mark/.rvm/bin/ruby
class DescribeInstance 
	def initialize (id)
			@id = id
	end
	def id
			@id
	end
	def describe
			cmd = "aws ec2 describe-instances --instance-ids #{id}"
			puts cmd 
			rc = `#{cmd}`
			puts rc
	end
end
foo = DescribeInstance.new("i-39bdb215")
foo.describe
