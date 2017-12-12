require 'openssl'

class RSA

	key = OpenSSL::PKey::RSA.new 512

	open 'private_key.pem', 'w' do |io| io.write key.to_pem end

	open 'public_key.pem', 'w' do |io| io.write key.public_key.to_pem end

end	