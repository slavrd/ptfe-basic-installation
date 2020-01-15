control 'os' do

  title 'PTFE OS requirements check'
  desc 'Checks if the minimum PTFE requirements are met.'

  describe filesystem('/') do
    its('free_kb') { should be >= 40 * 1024 * 1024 }
  end

  describe mount('/') do
    its('type') { should_not be_in  ['smb', 'nfs', 'cifs'] }
  end

end