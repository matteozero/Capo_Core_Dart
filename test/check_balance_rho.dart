String checkBalanceRho(String revAddress) {
  String rho = """
  new
  rl(\`rho:registry:lookup\`), RevVaultCh,
  vaultCh, balanceCh,
  deployId(\`rho:rchain:deployId\`),
  stdout(\`rho:io:stdout\`)
  in {

  rl!(\`rho:rchain:revVault\`, *RevVaultCh) |
  for (@(_, RevVault) <- RevVaultCh) {

  stdout!(("2.check_balance.rho")) |

  match "$revAddress" {
  revAddress => {

  stdout!(("Accessing vault at RevAddress", revAddress)) |

// most RevVault methods return an \`Either[String, A] = (false, String) \/ (true, A)\`
  @RevVault!("findOrCreate", revAddress, *vaultCh) |
  for (@(true, vault) <- vaultCh) {

  stdout!("Obtained vault, checking balance") |

  @vault!("balance", *balanceCh) |
  for (@balance <- balanceCh) {

  stdout!(("Balance is", balance)) |

  deployId!(balance)
  }
  }

  }
  }
  }
  }
  """;
  return rho;
}
