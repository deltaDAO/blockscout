defmodule BlockScoutWeb.AddressInfo do
  @moduledoc """
  A module for adding address info.
  """

  @address_map %{
    # deltaDAO
    String.downcase("0x628677D9A9d93a913182fa04893Da0ce4E6570Ee") => "deltaDAO AG",
    String.downcase("0x8d4198E9af22863d4269dDA6a41eF2BfA187AbAc") => "deltaDAO AG",
    String.downcase("0xC0E3B447c1e7B22769952E89389Ef2cD9B812Cc5") => "deltaDAO AG",
    String.downcase("0xBf252dD5b3a31A50Db34113e12517b21D143AC52") => "deltaDAO AG",
    String.downcase("0x0bd21cF4Da78f74c483a1109ac3A30794FBd556B") => "deltaDAO AG",
    String.downcase("0x9c26685b6E8e2997d9aAf3f1a642f1b1b3dB9580") => "deltaDAO AG",
    String.downcase("0xd0ea08826FA10eEaA3871a6AE680E5f15149F355") => "deltaDAO AG Faucet",
    String.downcase("0x4C84a36fCDb7Bc750294A7f3B5ad5CA8F74C4A52") => "deltaDAO AG",
    String.downcase("0x68C24FA5b2319C81b34f248d1f928601D2E5246B") => "deltaDAO AG",
    String.downcase("0x2859d961a6dBa6e7d30b2d383Af468edb4E7F4f6") => "deltaDAO AG",
    String.downcase("0xaBaf56FC1bB6b4FF9fA4378C3C8723d2B2444324") => "deltaDAO AG",
    String.downcase("0x0a7B96885b28deDE4a6887CA1150E36edb385BeE") => "deltaDAO AG",
    String.downcase("0xDF1c35c3d5178e9d98043b35a6737Bd861c191c9") => "deltaDAO AG",
    String.downcase("0x01e66950353400E93AEe7F041C0303103E2ef5Ab") => "deltaDAO AG",
    String.downcase("0x862E3fe199723945a38871dE4F736f1233589CE5") => "deltaDAO AG",
    String.downcase("0xFDC7BEc0aED8a584577fd59CbF56805eE8c976B3") => "deltaDAO AG",
    String.downcase("0x5f525cd29377DC2155C2AbCDaC0Ce45e630318b7") => "deltaDAO AG",
    String.downcase("0x3a69B365769a9dAb67865Ca5530c4B1D5259bCb7") => "deltaDAO AG",
    String.downcase("0x97870c129abc9877b66534e49f152585D6Ca3655") => "deltaDAO AG",
    String.downcase("0x1Ad061ad839f82C05767dACd2B5ab384E72B45a5") => "deltaDAO AG",
    String.downcase("0xFd4b5ae43f2aA446b02209098438890d3998cC9F") => "deltaDAO AG",
    String.downcase("0x732BF4fA8E57200621b0e1acbe8855c238823016") => "deltaDAO AG",
    String.downcase("0xD7b90d6476091F6bc4CAaC40180FB300351fAb9F") => "deltaDAO AG",

    # others
    String.downcase("0x4A806a4851472F7cFd579d3FF5465F03c3c2B5d4") => "EuProGigant A1",
    String.downcase("0x21CF19e1FaF3A62f82B432f82152e8c5C0FdBdaF") => "EuProGigant A2",
    String.downcase("0x9f4ceE0eBD03a1e9E4DcffaF876873d7a3e9595c") => "EuProGigant P1",
    String.downcase("0x6E7bec8715955B6Cc90A5A1767cd981b90C5a245") => "EuProGigant A3",
    String.downcase("0x2b92BF0496B7B41ea2d723325DDE96651795c784") => "DENSO AUTOMOTIVE Deutschland GmbH",
    String.downcase("0xe761F8e33c71D08A9323Cb2c711aB4Fae2634276") => "DENSO AUTOMOTIVE Deutschland GmbH",
    String.downcase("0xe3Df4851c094f5F6F1AC9AbfA4FC2075276195Ec") => "PEAQ A1",
    String.downcase("0x0aec046a558F13Ff18aAEc5E6f76084185358cdf") => "Datarella A1",
    String.downcase("0xf596D17C4a3A5c92c4721627B9e5E5064651BF46") => "Materna A1",
    String.downcase("0x6fE8aD445AD86b3d1325F79955Ef28d6e9cb2258") => "Bosch A1",
    String.downcase("0x61DB12d8b636Cb49ea09eCa58a893dA9480E1F33") => "BigchainDB A1",
    String.downcase("0x9dfbda23b65efB1c836828D74a96eB8528A60f3C") => "Craftworks A1",
    String.downcase("0xa98A6eefbAE870b88a9C7A43f4b50066A01c93b6") => "RWS A1",
    String.downcase("0x943CaA8afCAdd2F64a7cE9E53A91d5ea0BEb40c1") => "ATOS A1",
    String.downcase("0xa76Fa6837A6ffc9F123F2193717A5965c68B0cbA") => "Catena-X 1",
    String.downcase("0xFaeb57c16D5E9A9f06c8c5dB12796f5a432Eb7d6") => "Catena-X 2",
    String.downcase("0xb501FDaad0F0863C4c72f7EB9Abc23965DCa973d") => "Catena-X 3",
    String.downcase("0xF62bF6371Ee020Cb2164Ac3C338514DBbb93A0D4") => "Catena-X 4",
    String.downcase("0x81336c245712DbF0E971de5463173bCaA9826d84") => "IONOS SE",
    String.downcase("0xD7b90d6476091F6bc4CAaC40180FB300351fAb9F") => "Arsys",
    String.downcase("0x51Decd187744bCfAD1BAb0A3E71dD68fAC0ba478") => "bimkit",
    String.downcase("0x9Dc6aDA184fc98012D74F1C4f3f223183A4745D4") => "Wobcom",
    String.downcase("0x44C34FbBB727bDC648E65feCfF3FB9D4c85f1fe4") => "msg GmbH",
    String.downcase("0x2ee3c4F19f90237B7C45cfAD6B5dC4b5840563Ec") => "Perpetuum Progress",
    String.downcase("0x8fBF860883BB71D691053A4363030Dc1c65f7017") => "Detecon",
    String.downcase("0x212c355c3ce41a272606da61F661dDd2b7F8a4B1") => "IKS",
    String.downcase("0x48535044200dAE3FD4f5b5C3f9b077fa5c230Ef3") => "T-Systems Multimedia Solutions GmbH",
    String.downcase("0xF8dB4a6d529a14e3E029e2b8A9279f408909Fa20") => "OHB",
    String.downcase("0x3CEA8fBCbD1c745E081fD3937C18eE0b6Cc3f1b1") => "Airbus",
    String.downcase("0xf596D17C4a3A5c92c4721627B9e5E5064651BF46") => "Materna SE",
    String.downcase("0x533d456D3D5c16E6390647E2167678b7a76A4840") => "Felt Labs",
    String.downcase("0x56e194D46fF305560f51D06cE84649C1DD91d2F8") => "Felt Labs",
    String.downcase("0x62078F05Eb4450272D7E492F3660835826906822") => "University of Lleida",
    String.downcase("0xF20113edd04d98A64AD2A003B836677E1c9aACAD") => "State Library of Berlin",

    # v3 contracts https://github.com/oceanprotocol/contracts/tree/v3/contracts
    String.downcase("0x325c09E2093C56AbDc86c5ccD68c77952e8034Af") => "v3 DTFactory contract",
    String.downcase("0x7da756d49DFECb750B5ABa51c04088f257c3f8B4") => "v3 BFactory contract",
    String.downcase("0x69Df9594E6A30a5751D170093059E7adb3Bf5e92") => "v3 FixedRateExchange contract",
    String.downcase("0xfA89407778041EF51B9e1aA16Ff85bDf908D17e6") => "v3 Metadata contract",
    String.downcase("0x2a39940D98A4f9D01Ff0738c8420F360435b6A59") => "v3 Dispenser contract",
    String.downcase("0x0995527d3473b3A98C471f1ED8787ACD77fBF009") => "v3 Ocean contract",
    String.downcase("0x22561fDDaa7a26f853D06262f0277Db43AEE584b") => "v3 OPFCommunityFeeCollector contract",
    # v4 contracts
    String.downcase("0xE945Bc2097d96B3FfB8e48bBb71ef7D3968f8597") => "v4 Ocean contract",
    String.downcase("0x2e0C9e15A45c9884F7768BB852E7399B9153525d") => "v4 OPFCommunityFeeCollector contract",
    String.downcase("0xc9f83F595C763e43Ddea97426E4030D03c9FFD70") => "v4 Router contract",
    String.downcase("0xFde80d4228B7dEf216E24f84e9BAc8458C5F232c") => "v4 FixedPrice contract",
    String.downcase("0xE5517D71C61537e7693630f60Bd9E09f1215479a") => "v4 Staking contract",
    String.downcase("0x0301E8676e8bCa960dc95b8bd93D6AAf0B2F1020") => "v4 ERC20Template contract",
    String.downcase("0xB3a2c32925b730348bb5177b1F8fBD1Ac90eBe63") => "v4 ERC20TemplateEnterprise contract",
    String.downcase("0x9F13dE57BCf7462E6124b99C62a9F2CBc7860600") => "v4 ERC721Template contract",
    String.downcase("0x44cf54BA87fcE6882dF59ECe877a71ceaD5045a7") => "v4 Dispenser contract",
    String.downcase("0x16575f77c27A3437FE1bE56AB983f1bEb0DD14B2") => "v4 ERC721Factory contract"
  }

  def address_to_name(address, include_address) do
    # Look up the name associated with the given address in the map
    name = @address_map[String.downcase(address)]

    # If a name is found, return it; otherwise, return the address itself
    if name do
      if include_address do
        "#{name} (#{address})"
      else
        name
      end
    else
      address
    end
  end
end
