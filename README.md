Solidity Básico
Smartcontract life cycle

    Ideia

Contrato:

    armazenar um valor: (true, false)
    qualquer pessoas possa ver o valor
    qualquer pessoa possa alterar esse valor
    O valor deve sempre ser (true ou false)

    Contrato
    Testes (TDD)
    Deploy Local
    Auditória
    Deploy Testnet
    Deploy Mainnet

APP de:
    Flipper



//Fazendo testes:

//build test [caminho script]
//anvil (irá retornar as chaves privadas e publicas da rede fake)

//Colocar blockchain para rodar
//anvil -b [tempo(s) - ex. 5]

//Conseguir o address da blockchain
//forge script [caminho do script] --rpc-url [host - "http://127.0.0.1:8545"] --broadcast
//Exemplo: forge script script/Flipper.sol --rpc-url "http://127.0.0.1:8545" --broadcast

//Chamada na blockchain para leituras
//Cast call --private-key [key] --rpc-url [host - "http://127.0.0.1:8545"] [bloochain address] [metodo a ser chamado]
//Exemplo: cast call --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 --rpc-url "http://127.0.0.1:8545" "0x5FbDB2315678afecb367f032d93F642f64180aa3" "getValue()(bool)"

//Chamada na blockchain para gravações
//Cast send --private-key [key] --rpc-url [host - "http://127.0.0.1:8545"] [bloochain address] [metodo a ser chamado] [dado a ser enviado no método]
//Exemplo: cast send --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 --rpc-url "http://127.0.0.1:8545" "0x5FbDB2315678afecb367f032d93F642f64180aa3" "setNumber(uint8)()" 99