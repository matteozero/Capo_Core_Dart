import 'package:flutter/cupertino.dart';

String transferFundsRho(
    {@required String revAddrFrom,
    @required String revAddrTo,
    @required num amount}) {
  String rho = """
    new rl(\`rho:registry:lookup\`), RevVaultCh,
    stdout(\`rho:io:stdout\`)
  in {

    rl!(\`rho:rchain:revVault\`, *RevVaultCh) |
    for (@(_, RevVault) <- RevVaultCh) {

      stdout!(("capo.transfer_funds.rho")) |

      match ("$revAddrFrom", "$revAddrTo", $amount) {
        (from, to, amount) => {

          new vaultCh, revVaultkeyCh, deployerId(\`rho:rchain:deployerId\`) in {
            @RevVault!("findOrCreate", from, *vaultCh) |
            @RevVault!("deployerAuthKey", *deployerId, *revVaultkeyCh) |
            for (@(true, vault) <- vaultCh; key <- revVaultkeyCh) {

              stdout!(("Beginning transfer of ", amount, "REV from", from, "to", to)) |

              new resultCh in {
                @vault!("transfer", to, amount, *key, *resultCh) |
                for (@result <- resultCh) {

                  stdout!(("Finished transfer of ", amount, "REV to", to, "result was:", result))
                }
              }
            }
          }

        }
      }
    }
  }
  """;
  return rho;
}
