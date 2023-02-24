defmodule Explorer.AddressInfo do
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
    String.downcase("0xa76Fa6837A6ffc9F123F2193717A5965c68B0cbA") => "deltaDAO AG",
    String.downcase("0xFaeb57c16D5E9A9f06c8c5dB12796f5a432Eb7d6") => "deltaDAO AG",
    String.downcase("0xb501FDaad0F0863C4c72f7EB9Abc23965DCa973d") => "deltaDAO AG",
    String.downcase("0xF62bF6371Ee020Cb2164Ac3C338514DBbb93A0D4") => "deltaDAO AG",
    String.downcase("0x4C84a36fCDb7Bc750294A7f3B5ad5CA8F74C4A52") => "deltaDAO AG",
    String.downcase("0x2859d961a6dBa6e7d30b2d383Af468edb4E7F4f6") => "deltaDAO AG",

    # others
    String.downcase("0x4A806a4851472F7cFd579d3FF5465F03c3c2B5d4") => "PTW - TU Darmstadt",
    String.downcase("0x21CF19e1FaF3A62f82B432f82152e8c5C0FdBdaF") => "PTW - TU Darmstadt",
    String.downcase("0x9f4ceE0eBD03a1e9E4DcffaF876873d7a3e9595c") => "PTW - TU Darmstadt",
    String.downcase("0x6E7bec8715955B6Cc90A5A1767cd981b90C5a245") => "PTW - TU Darmstadt",
    String.downcase("0x81336c245712DbF0E971de5463173bCaA9826d84") => "IONOS Cloud",
    String.downcase("0x56eA3Cc92144Db3bA2bdE25131F40c7B98F7eD32") => "Exoscale",
    String.downcase("0x9Dc6aDA184fc98012D74F1C4f3f223183A4745D4") => "WOBCOM",
    String.downcase("0x0337b320DEfAddd9aDbC518f8A9cee30b606d15b") => "Arsys",
    String.downcase("0xD7b90d6476091F6bc4CAaC40180FB300351fAb9F") => "Arsys",
    String.downcase("0xF20113edd04d98A64AD2A003B836677E1c9aACAD") => "State Library of Berlin",
    String.downcase("0x62078F05Eb4450272D7E492F3660835826906822") => "University of Lleida",
    String.downcase("0xf596D17C4a3A5c92c4721627B9e5E5064651BF46") => "Materna SE",
    String.downcase("0x3CEA8fBCbD1c745E081fD3937C18eE0b6Cc3f1b1") => "Airbus",
    String.downcase("0xF8dB4a6d529a14e3E029e2b8A9279f408909Fa20") => "OHB SE",
    String.downcase("0x48535044200dAE3FD4f5b5C3f9b077fa5c230Ef3") => "T-Systems Multimedia Solutions GmbH",
    String.downcase("0x212c355c3ce41a272606da61F661dDd2b7F8a4B1") => "IKS",
    String.downcase("0x44C34FbBB727bDC648E65feCfF3FB9D4c85f1fe4") => "msg GmbH",
    String.downcase("0x8fBF860883BB71D691053A4363030Dc1c65f7017") => "Detecon",
    String.downcase("0x2ee3c4F19f90237B7C45cfAD6B5dC4b5840563Ec") => "Perpetuum Progress",
    String.downcase("0x7DF1674a1e3449778eEB324652d3FF3Cb5046753") => "SINTEF",
    String.downcase("0xe3Df4851c094f5F6F1AC9AbfA4FC2075276195Ec") => "PEAQ",
    String.downcase("0xB21282F443EB0D490819d98F2976758af5C979B3") => "Datarella",
    String.downcase("0x0aec046a558F13Ff18aAEc5E6f76084185358cdf") => "Datarella",
    String.downcase("0x6fE8aD445AD86b3d1325F79955Ef28d6e9cb2258") => "Bosch",
    String.downcase("0x51Decd187744bCfAD1BAb0A3E71dD68fAC0ba478") => "TU Dortmund",
    String.downcase("0xa98A6eefbAE870b88a9C7A43f4b50066A01c93b6") => "RWS",
    String.downcase("0x9dfbda23b65efB1c836828D74a96eB8528A60f3C") => "Craftworks",
    String.downcase("0xb2AF8b92bFaC5299Cb6EDEf16150BFD1d4d26a93") => "Concircle Österreich GmbH",
    String.downcase("0xa702032E187E6A53EAddC28a735B414220712689") => "Software AG",
    String.downcase("0x2b92BF0496B7B41ea2d723325DDE96651795c784") => "DENSO AUTOMOTIVE Deutschland GmbH",
    String.downcase("0xe761F8e33c71D08A9323Cb2c711aB4Fae2634276") => "DENSO AUTOMOTIVE Deutschland GmbH",
    String.downcase("0x895975869261A215813e33568a295F94A3F301ed") => "Struggle Creative Oy",
    String.downcase("0x203C7AA993EED06932FA327a192de9A8370b5Ab4") => "Mercedes-Benz Singapore Pte. Ltd.",
    String.downcase("0x4d6240C7Ef355a2E85c13B26A49A35908ce853E5") => "Mercedes-Benz Singapore Pte. Ltd.",
    String.downcase("0x6bF77769e84045a9EAC64573e70a5562457C52ad") => "Höchstleistungsrechenzentrum Stuttgart",
    String.downcase("0x17c8D253443F9E7305A2539d7aF177B21aAD3355") => "Ruhr-Universität Bochum",
    String.downcase("0xFDF411B7A23182e7F0a635bdF0d25f0fCb2aAf74") => "north.io GmbH",
    String.downcase("0x3560626F234eD181E807E4e31ded56D9aca1ac58") => "CONTACT Software GmbH",
    String.downcase("0xF0926FbE8e60E54aFB4fD296B2698230ab32799b") => "Universität Siegen",
    String.downcase("0xAA782a260Ad773bca5Ff0535356CB0F7B94Cd254") => "AWS-Institut für digitale Produkte und Prozesse gGmbH",
    String.downcase("0x2aC6802160A74677B7cEC1aaD7E41Ec968D57896") => "5D Institut GmbH",
    String.downcase("0xFd1BEC7E551fAeA6102045D720dD693c4e9C8E06") => "Accenture",
    String.downcase("0xa2199E3f60fC244037Efd5A77714CC05F604F855") => "Airbus Defence and Space GmbH",
    String.downcase("0x5101ea56E29f5dc03285809b6157f0588ff255D0") => "Bernard Technologies GmbH",
    String.downcase("0x8B7f2b75B7F87D3125C8B0eDB85639B441BBcE21") => "Deutsches Forschungszentrum für Künstliche Intelligenz GmbH",
    String.downcase("0xb11124Dfa40E44b3283068fd07bf6FdE60caf06A") => "Hochschule für angewandte Wissenschaften Kempten",
    String.downcase("0x632460b14aDd90aD9430e381B4662779cC1ab7a6") => "Fraunhofer-Institut für Graphische Datenverarbeitung IGD",
    String.downcase("0x1f65110b63B6044f1E92543C09231842131798C7") => "52°North GmbH",
    String.downcase("0x7A6246e02B2aA276203469Cfb839a2666520D8b5") => "Atos Information Technology GmbH",
    String.downcase("0x943CaA8afCAdd2F64a7cE9E53A91d5ea0BEb40c1") => "ATOS",
    String.downcase("0xDFa29AE20eac7f203DdDbe15E1830985e99143B8") => "TrueOcean GmbH",
    String.downcase("0xFfA05d656465568BE83B11bf274c5458AC8401AC") => "Institute for Language and Speech Processing",
    String.downcase("0xb500BfE3d89b5D6b0d2b91841c3A3aD568Cb0FdC") => "Vicomtech",
    String.downcase("0x8BF36BEFC22a7b9c1a546139bFd4ae8420bcFf0e") => "Fraunhofer IAIS",
    String.downcase("0x2dB30B996C0E2990F836685Cf1A2939b3299f8e5") => "Berger Holding GmbH & Co. KG",
    String.downcase("0x224482ebcf914b9FA9E312036B377e26B676E534") => "Christoph Kroschke GmbH",
    String.downcase("0xD580c01E2f503287006138a94eBBc537Fe7eBD25") => "Brinkhaus GmbH",
    String.downcase("0x4B107057aB8278c7d9436bf76230d16e5F7BaD16") => "Gühring KG",
    String.downcase("0x7bf493b142AB0bb37c7f766A1585245901891685") => "Fraunhofer-Institut für Werkzeugmaschinen und Umformtechnik IWU",
    String.downcase("0x1c0c9211E8Ec8E0253A53880D5481e4580B62125") => "imc information multimedia communication AG",
    String.downcase("0xEEe803bEFd2B4f229E57523Edb11CDE38DD1a23E") => "SAP Fioneer GmbH",
    String.downcase("0xb828bA1850aA11daA1890896573Aa6008221A671") => "NT Neue Technologie AG",
    String.downcase("0x005d24698bF41c398ECF15a93455621932a6e19F") => "IONOS SE",
    String.downcase("0x746d4715c24fc4d26D02A558ACF98dC717C68E1e") => "ScopeSET GmbH",
    String.downcase("0x1Bf21DCb771Aba18B1D23AA6D8a619C1AB1811a4") => "RIB Software GmbH",
    String.downcase("0x04FEA446847c3539d35Cca0a74Cb82Da811BAfc3") => "msg DAVID GmbH",
    String.downcase("0x69bF63B2Bb6A93fc4ff434595A72a4ED313E5698") => "Arvato Systems GmbH",
    String.downcase("0xEdfd506dd449Cd06c91f51Fe9DfE4e3E57B2F8f5") => "Fraunhofer-Institut für Produktionsanlagen und Konstruktionstechnik",
    String.downcase("0x0763BfBcBfA0126b5A5509fB1185b7b6476BdAd8") => "OSISM GmbH",
    String.downcase("0x54d2946677CC16E06Efd6161A4abFA17fc98Afc3") => "Netcompany-Intrasoft S.A.",
    String.downcase("0x5880C2C30C922FE700fc079e1b6BBa7e9E7DE577") => "Stackable GmbH",
    String.downcase("0xc2350eA5913511A95c1aBED51de377A0b92846Be") => "FZI Forschungszentrum Informatik",
    String.downcase("0x0c85Cd08E6643Fa3E4B75268431d19CcFC99C916") => "ProCarement GmbH",
    String.downcase("0x1153265057782e8C57292CA590E50acC36037204") => "Hochschule Furtwangen University (HFU)",
    String.downcase("0xF211efa0C51559e6730db3Ba6FE1f1D46A68BE14") => "Daten-Kompetenzzentrum Städte und Regionen DKSR GmbH",
    String.downcase("0x7209bd8fDd841358a3CF9E7DaD8D9dCe2E4BbBB8") => "GMN Paul Müller Industrie GmbH & Co. KG",
    String.downcase("0xDB5807EacA2937f6264c5725538f8Ec357b4d3b2") => "Fraunhofer-Institut für Offene Kommunikationssysteme FOKUS",
    String.downcase("0x8482256AC35fcA568a53CfD77Af9538FEC0691bb") => "Bechtle Aktiengesellschaft",
    String.downcase("0x985f314171DFc0Ec3443E32b262c3135E094eD72") => "Bundesdruckerei Gruppe GmbH",
    String.downcase("0x99c030936B5E7381E65B645d3762A93147EB15F7") => "Fraunhofer IOSB",
    String.downcase("0x7104a77Ca5FfC6D3f0840048C307d05EA3b529C0") => "embeteco GmbH & Co. KG",
    String.downcase("0x9c373e9f125497281f37AeF603fa99572856Bc38") => "T-Systems International GmbH",
    String.downcase("0x8FAF0702C51c94b5848774129047d75cEe49EE87") => "IPROconsult GmbH",
    String.downcase("0x3EAbA16E4Ac451D85839A42eb9e7C61F157C88b7") => "Elektra Solar GmbH",
    String.downcase("0x1c99F7C29EE0e79CAAD8E4d0Cc0b95D5Ece62294") => "Setlabs Research",
    String.downcase("0xb9C596E9eC598a865b51f3F53ae7d122B7b7a937") => "Schüßler-Plan Digital GmbH",
    String.downcase("0xb7cF56a08F2B6ccF250B431125850968b7f6a950") => "Data Machine Intelligence Solutions GmbH",
    String.downcase("0x4476123c4B4706cf88CbfA055b72726Baa1e8041") => "Deutsches Zentrum für Luft- und Raumfahrt e. V. (DLR)",
    String.downcase("0x9309Ce467475DbB0a9c549B988F6571EB024507C") => "OHB System AG",
    String.downcase("0xb51d556E910Dd1887602034bbB66DA63EaA80ce2") => "C&S Computer und Software GmbH",
    String.downcase("0x007dB3DC8De9ae0F8AfeeBf1f7C92CcbD1A75Fd7") => "eco - Verband der Internetwirtschaft e.V.",
    String.downcase("0xe70bBA7bC033Bf1Ce6Fa3328eCFAAc8966E66966") => "Institut für Automation und Kommunikation e. V.",
    String.downcase("0xE4EE92b3a6B661b7148305Fa3A8d96062CBFAFc5") => "Fujitsu Services GmbH",
    String.downcase("0x37e01308d6A0E322dECc457a13E0B2b2086D84B1") => "RADIUSMEDIA KG",
    String.downcase("0x9Adf8e343ec1C7dB2B44e420bB8F4Cc51dEbFb7a") => "ahu GmbH Wasser Boden Geomatik",
    String.downcase("0xE64872A181F0695DA0660fE0B809a89A3bA359AA") => "Hochschule Offenburg (HSO)",
    String.downcase("0x533d456D3D5c16E6390647E2167678b7a76A4840") => "Felt Labs",
    String.downcase("0x56e194D46fF305560f51D06cE84649C1DD91d2F8") => "Felt Labs",    
    String.downcase("0x61DB12d8b636Cb49ea09eCa58a893dA9480E1F33") => "BigchainDB",
    String.downcase("0xC8a08b33995594bfdB0ef9c18EB72da0469E396F") => "Deal ex Machina",
    String.downcase("0x289Ff19C1e544B6E9488d5E79966491A2bAa88C9") => "Deloitte",

    #OCEAN
    String.downcase("0x0995527d3473b3A98C471f1ED8787ACD77fBF009") => "Ocean contract",

    # v3 contracts https://github.com/oceanprotocol/contracts/tree/v3/contracts
    String.downcase("0x325c09E2093C56AbDc86c5ccD68c77952e8034Af") => "v3 DTFactory contract",
    String.downcase("0x7da756d49DFECb750B5ABa51c04088f257c3f8B4") => "v3 BFactory contract",
    String.downcase("0x69Df9594E6A30a5751D170093059E7adb3Bf5e92") => "v3 FixedRateExchange contract",
    String.downcase("0xfA89407778041EF51B9e1aA16Ff85bDf908D17e6") => "v3 Metadata contract",
    String.downcase("0x2a39940D98A4f9D01Ff0738c8420F360435b6A59") => "v3 Dispenser contract",
    String.downcase("0x22561fDDaa7a26f853D06262f0277Db43AEE584b") => "v3 OPFCommunityFeeCollector contract",
    
    # v4 contracts
    String.downcase("0x2e0C9e15A45c9884F7768BB852E7399B9153525d") => "v4 OPFCommunityFeeCollector contract",
    String.downcase("0x7A3C9F0729AB93e4F9945221168A56eCf450187D") => "v4 Router contract",
    String.downcase("0xAD8E7d2aFf5F5ae7c2645a52110851914eE6664b") => "v4 FixedPrice contract",
    String.downcase("0x7b7bbA77955609172cf4B7EC28B8F4BF1E466F0A") => "v4 Staking contract",
    String.downcase("0xA7D7Cb8dDd46c1B13e9Ccab2fA7D4fC5926f0348") => "v4 ERC20Template contract",
    String.downcase("0x7fEcdEDaE245d3AD5ad93c6Df9603d06887786e8") => "v4 ERC20TemplateEnterprise contract",
    String.downcase("0x2CBCD3b10783378e34209B760e5A70531198f65E") => "v4 ERC721Template contract",
    String.downcase("0x94cb8FC8719Ed09bE3D9c696d2037EA95ef68d3e") => "v4 Dispenser contract",
    String.downcase("0x6cb85858183B82154921f68b434299EC4281da53") => "v4 ERC721Factory contract"
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
