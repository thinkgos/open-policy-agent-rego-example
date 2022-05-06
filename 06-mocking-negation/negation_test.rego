package negation

test_no_bitcoin_miners_failed {
	no_bitcoin_miners with data.apps as [{"name": "bitcoin-miner"}, {"name": "web"}]
}

test_no_bitcoin_miners_using_negation {
	no_bitcoin_miners_using_negation with data.apps as [{"name": "bitcoin"}, {"name": "web"}]
}
