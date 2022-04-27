package negation

# 目标: apps中不包含bitcoin-miner

# 这是不对的, 只要有一个不是bitcoin-miner, 那么就是true
no_bitcoin_miners {
	app := data.apps[_]
	app.name != "bitcoin-miner" # THIS IS NOT CORRECT.
}

# 这是对的, 采用了逻辑非
no_bitcoin_miners_using_negation {
	not any_bitcoin_miners
}

any_bitcoin_miners {
	some i
	app := data.apps[i]
	app.name == "bitcoin-miner"
}
