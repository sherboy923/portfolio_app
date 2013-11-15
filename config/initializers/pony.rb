Pony.options = {
	:to => 'scsthill@gmail.com',
	:via => :smtp,
	:via_options => {
		:address				=> 'smtp.gmail.com',
		:port					=> '587',
		:enable_starttls_auto	=> true,
		:user_name				=> 'shermansthill@gmail.com',
		:password				=> '',
		:authentication			=> :plain,
		:domain					=> 'localhost.localdomain'
	}
}