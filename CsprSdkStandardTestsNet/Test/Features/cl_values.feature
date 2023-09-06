Feature: CL Values

  Scenario: CL Values

#    Given that a CL value of type "String" has a value of "ACME"
#    Then it's bytes will be "0400000041434d45"
#    Given that a CL value of type "U8" has a value of "8"
#    Then it's bytes will be "08"
#    Given that a CL value of type "U32" has a value of "100000"
#    Then it's bytes will be "a0860100"
#    Given that a CL value of type "U64" has a value of "1000000"
#    Then it's bytes will be "40420f0000000000"
#    Given that a CL value of type "U256" has a value of "100000000000"
#    Then it's bytes will be "0500e8764817"
#    Given that a CL value of type "I32" has a value of "99999"
#    Then it's bytes will be "9f860100"
#    Given that a CL value of type "I64" has a value of "9999999"
#    Then it's bytes will be "7f96980000000000"
#    Given that a CL value of type "Bool" has a value of "true"
#    Then it's bytes will be "01"
#    Given that a CL value of type "ByteArray" has a value of "01ec7ff7b401fd62efa877b0a88295928fc1ecd93fd3cc6d58373dd38f098724be"
#    Then it's bytes will be "01ec7ff7b401fd62efa877b0a88295928fc1ecd93fd3cc6d58373dd38f098724be"
#    Given that a CL value of type "Key" has a value of "016ff3127d815871618b6f639cf4a4a2df4edeacb8a0df662822707a5e570c9d32"
#    Then it's bytes will be "016ff3127d815871618b6f639cf4a4a2df4edeacb8a0df662822707a5e570c9d32"
#    Given that a CL value of type "PublicKey" has a value of "01ee5c4b8fed1d3b9ad0c4e491d3d5fe2b4a9d9cf04c6fc429c2da4e619a449919"
#    Then it's bytes will be "01ee5c4b8fed1d3b9ad0c4e491d3d5fe2b4a9d9cf04c6fc429c2da4e619a449919"
#    Given that a CL value of type "URef" has a value of "2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a"
#    Then it's bytes will be "2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a07"
#    Given that the CL complex value of type "Option" with an internal types of "Bool" values of "true"
#    Then it's bytes will be "0101"
#    Given that the CL complex value of type "Tuple1" with an internal types of "String" values of "ACME"
#    Then it's bytes will be "0400000041434d45"
    Given that the CL complex value of type "Tuple2" with an internal types of "String,U32" values of "ACME,10000"
    Then it's bytes will be "0400000041434d4510270000"
    Given that the CL complex value of type "Tuple3" with an internal types of "String,U32,Bool" values of "ACME,10000,false"
    Then it's bytes will be "0400000041434d451027000000"
    Given that the CL complex value of type "List" with an internal types of "String,String,String,String,String" values of "Alpha,Beta,Gama,Delta,Epsilon"
    Then it's bytes will be "0500000005000000416c70686104000000426574610400000047616d610500000044656c746107000000457073696c6f6e"
    Given that the CL complex value of type "Map" with an internal types of "String,String,String" values of "ACME,20000,true"
    Then it's bytes will be "0300000001000000300400000041434d45010000003105000000323030303001000000320400000074727565"
    When the values are added as arguments to a deploy
    And the deploy is put on chain
    Then the deploy response contains a valid deploy hash of length 64 and an API version "1.0.0"
    And the deploy has successfully executed
    When the deploy is obtained from the node
    Then the deploys NamedArgument "String" has a value of "ACME" and bytes of "0400000041434d45"
    And the deploys NamedArgument "U8" has a value of "8" and bytes of "08"
    And the deploys NamedArgument "U32" has a value of "100000" and bytes of "a0860100"
    And the deploys NamedArgument "U64" has a value of "1000000" and bytes of "40420f0000000000"
    And the deploys NamedArgument "U256" has a value of "100000000000" and bytes of "0500e8764817"
    And the deploys NamedArgument "I32" has a value of "99999" and bytes of "9f860100"
    And the deploys NamedArgument "I64" has a value of "9999999" and bytes of "7f96980000000000"
    And the deploys NamedArgument "Bool" has a value of "true" and bytes of "01"
    And the deploys NamedArgument "ByteArray" has a value of "01ec7ff7b401fd62efa877b0a88295928fc1ecd93fd3cc6d58373dd38f098724be" and bytes of "01ec7ff7b401fd62efa877b0a88295928fc1ecd93fd3cc6d58373dd38f098724be"
    And the deploys NamedArgument "Key" has a value of "016ff3127d815871618b6f639cf4a4a2df4edeacb8a0df662822707a5e570c9d32" and bytes of "016ff3127d815871618b6f639cf4a4a2df4edeacb8a0df662822707a5e570c9d32"
    And the deploys NamedArgument "PublicKey" has a value of "01ee5c4b8fed1d3b9ad0c4e491d3d5fe2b4a9d9cf04c6fc429c2da4e619a449919" and bytes of "01ee5c4b8fed1d3b9ad0c4e491d3d5fe2b4a9d9cf04c6fc429c2da4e619a449919"
    And the deploys NamedArgument "URef" has a value of "2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a" and bytes of "2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a2a07"
    And the deploys NamedArgument Complex value "Option" has internal types of "Bool" and values of "true" and bytes of "0101"
    And the deploys NamedArgument Complex value "Tuple1" has internal types of "String" and values of "ACME" and bytes of "0400000041434d45"
    And the deploys NamedArgument Complex value "Tuple2" has internal types of "String,U32" and values of "ACME,10000" and bytes of "0400000041434d4510270000"
    And the deploys NamedArgument Complex value "Tuple3" has internal types of "String,U32,Bool" and values of "ACME,10000,false" and bytes of "0400000041434d451027000000"
    And the deploys NamedArgument Complex value "List" has internal types of "String,String,String,String,String" and values of "Alpha,Beta,Gama,Delta,Epsilon" and bytes of "0500000005000000416c70686104000000426574610400000047616d610500000044656c746107000000457073696c6f6e"
    And the deploys NamedArgument Complex value "Map" has internal types of "String,String,String" and values of "ACME,20000,true" and bytes of "0300000001000000300400000041434d45010000003105000000323030303001000000320400000074727565"



