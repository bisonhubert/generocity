Braintree::Configuration.environment = :sandbox
Braintree::Configuration.logger = Logger.new('log/braintree.log')
Braintree::Configuration.merchant_id = '6yyyxk8x9qrss9r5'#ENV['BRAINTREE_MERCHANT_ID']
Braintree::Configuration.public_key = 'wm865nxw8xd2zyx4'#ENV['BRAINTREE_PUBLIC_KEY']
Braintree::Configuration.private_key = '0ec0c8d530a875c8fae1190adb308b18'#ENV['BRAINTREE_PRIVATE_KEY']