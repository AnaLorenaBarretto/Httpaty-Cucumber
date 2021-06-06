Dado('o endereço da API para manter o cadastro de startup') do
    #ja indicado na classe Startup
end

  Quando('realizar uma requisição para cadastrar uma startup') do
     $response = @startup.postStartup
  end

  Então('a API irá retornar os dados do cadastro da startup respondendo o codigo {int}') do |int|
    expect($response.code).to eq 201
    puts"Response code: #{$response.code}"
    expect($response.message).to eq "Created"
    puts"Response message: #{$response.message}"

    puts "ID:         #{$response["id"]}"
    puts "Name        #{$response["name"]}"
    puts "City        #{$response["city"]}"
    puts "CreatedAt   #{$response["createdAt"]}"

    $id = $response["id"]
  end

  Quando('realizar uma requisição passando o ID uma startup') do
    $get = @startup.getStartup($id)
  end
  
  Então('a API irá retornar os dados da startup correspondente respondendo o codigo {int}') do |int|
    expect($get.code).to eq 200
    puts"status code: #{$get.code}"
    expect($get.message).to eq "OK"
    puts"Status message: #{$get.message}"
    expect($get["id"]).to eq ($response["id"])

    puts "ID:         #{$get["id"]}"
    puts "Name        #{$get["name"]}"
    puts "City        #{$get["city"]}"
    puts "CreatedAt   #{$get["createdAt"]}"
  end
  
  Quando('realizar uma requisição para alterar uma startup') do
    $put = @startup.putStartup($get["id"])
  end
  
  Então('a API irá retornar os dados da startup alterados respondendo o codigo {int}') do |int|
    expect($put.code).to eq(int)
    puts"status code: #{$put.code}"
    expect($put.message).to eq "OK"
    puts"Status message: #{$put.message}"
    expect($put["id"]).to eq($response["id"])

    puts "ID:         #{$put["id"]}"
    puts "Name        #{$put["name"]}"
    puts "City        #{$put["city"]}"
    puts "CreatedAt   #{$put["createdAt"]}"
  end
  
  Quando('realizar uma requisição para excluir uma startup') do
    $delete = @startup.deleteStartup($get["id"])
  end
  
  Então('a API irá retornar os dados da exclusão respondendo o codigo {int}') do |int|
    expect($delete.code).to eq(int)
    puts "Status code #{$delete.code}"
    expect($delete.message).to eq "OK"
    puts"Status message: #{$delete.message}"

    puts "ID:         #{$delete["id"]}"
    puts "Name        #{$delete["name"]}"
    puts "City        #{$delete["city"]}"
    puts "CreatedAt   #{$delete["createdAt"]}"
  end