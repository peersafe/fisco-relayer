module github.com/polynetwork/fisco-relayer

go 1.14

require (
	github.com/FISCO-BCOS/crypto v0.0.0-20200202032121-bd8ab0b5d4f1 // indirect
	github.com/FISCO-BCOS/go-sdk v0.10.3
	github.com/boltdb/bolt v1.3.1
	github.com/btcsuite/btcd v0.20.1-beta
	github.com/cmars/basen v0.0.0-20150613233007-fe3947df716e // indirect
	github.com/ethereum/go-ethereum v1.9.15
	github.com/ontio/ontology v1.11.1-0.20200812075204-26cf1fa5dd47
	github.com/ontio/ontology-crypto v1.0.9
	github.com/ontio/ontology-go-sdk v1.11.8
	github.com/pkg/errors v0.9.1
	github.com/polynetwork/eth-contracts v0.0.0-20200814062128-70f58e22b014
	github.com/polynetwork/poly v0.0.0-20200722075529-eea88acb37b2
	github.com/polynetwork/poly-go-sdk v0.0.0-20200730112529-d9c0c7ddf3d8
	github.com/polynetwork/poly-io-test v0.0.0-20200819093740-8cf514b07750
	github.com/spf13/viper v1.6.3
	github.com/status-im/keycard-go v0.0.0-20190316090335-8537d3370df4
	github.com/stretchr/testify v1.6.1
	github.com/tjfoc/gmsm v1.3.2-0.20200914155643-24d14c7bd05c
	github.com/urfave/cli v1.22.4
	launchpad.net/gocheck v0.0.0-20140225173054-000000000087 // indirect
)

replace (
	github.com/polynetwork/poly => github.com/zouxyan/poly v0.0.0-20201016094709-d256b7155d81
	github.com/polynetwork/poly-go-sdk => github.com/zouxyan/poly-go-sdk v0.0.0-20201016100426-0ff50a3db691
	github.com/tjfoc/gmsm => github.com/zouxyan/gmsm v1.3.2-0.20200925082225-a66aabdb8da8
)
