action :go do
  bash 'foo' do
    code 'echo foo!'
    action [:nothing]
  end

  ruby_block @new_resource.name do 
    block do
      true
    end
    notifies :run, 'bash[foo]'
  end
end
