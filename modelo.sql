CREATE TABLE "accounts"."accounts_accounts"(accountid        character varying(256) encode lzo,
                                            customerid       character varying(256) encode lzo,
                                            organizationid   character varying(256) encode lzo,
                                            organizationname character varying(256) encode lzo,
                                            brandname        character varying(256) encode lzo,
                                            companycnpj      character varying(256) encode lzo,
                                            type             character varying(256) encode lzo,
                                            compecode        character varying(100) encode lzo,
                                            branchcode       character varying(256) encode lzo,
                                            number           character varying(256) encode lzo,
                                            checkdigit       character varying(256) encode lzo);
                                            
CREATE TABLE "accounts"."accounts_balances"(accountid                           character varying(256) encode lzo,
                                            customerid                          character varying(256) encode lzo,
                                            organizationid                      character varying(256) encode lzo,
                                            organizationname                    character varying(256) encode lzo,
                                            availableamount                     numeric(12,2) encode az64,
                                            avilableamountcurrency              character varying(256) encode lzo,
                                            blockedamount                       integer encode az64,
                                            blockedamountcurrency               character varying(256) encode lzo,
                                            automaticallyinvestedamount         integer encode az64,
                                            automaticallyinvestedamountcurrency character varying(256) encode lzo);
                                            
                                            
                                            
CREATE TABLE "accounts"."accounts_details"(accountid        character varying(256) encode lzo,
                                           customerid       character varying(256) encode lzo,
                                           organizationid   character varying(256) encode lzo,
                                           organizationname character varying(256) encode lzo,
                                           compecode        character varying(100) encode lzo,
                                           brachcode        character varying(256) encode lzo,
                                           number           character varying(256) encode lzo,
                                           checkdigit       character varying(256) encode lzo,
                                           type             character varying(256) encode lzo,
                                           subtype          character varying(256) encode lzo,
                                           currency         character varying(256) encode lzo);
                                           
                                           
CREATE TABLE "accounts"."accounts_overdraft_limits"(accountid                         character varying(256) encode lzo,
                                                    customerid                        character varying(256) encode lzo,
                                                    organizationid                    character varying(256) encode lzo,
                                                    organizationname                  character varying(256) encode lzo,
                                                    overdraftcontractedlimit          integer encode az64,
                                                    overdraftcontractedlimitcurrency  character varying(256) encode lzo,
                                                    overdraftusedlimit                character varying(256) encode lzo,
                                                    overdraftusedlimitcurrency        character varying(256) encode lzo,
                                                    unarrangedoverdraftamount         character varying(256) encode lzo,
                                                    unarrangedoverdraftamountcurrency character varying(256) encode lzo);
                                                    
                                                    
                                                    
CREATE TABLE "accounts"."accounts_transactions"(accountid                      character varying(256) encode lzo,
                                                customerid                     character varying(256) encode lzo,
                                                organizationid                 character varying(256) encode lzo,
                                                organizationname               character varying(256) encode lzo,
                                                transactionid                  character varying(256) encode lzo,
                                                completedauthorisedpaymenttype character varying(256) encode lzo,
                                                creditdebittype                character varying(256) encode lzo,
                                                transactionname                character varying(256) encode lzo,
                                                type                           character(100) encode lzo,
                                                amount                         numeric(12,2) encode az64,
                                                transactioncurrency            character varying(256) encode lzo,
                                                transactiondate                character varying(256) encode lzo,
                                                creartiecnpjcpf                character varying(256) encode lzo,
                                                partiepersontype               character varying(256) encode lzo,
                                                partiecompecode                character varying(256) encode lzo,
                                                partiebranchcode               character varying(256) encode lzo,
                                                partienumber                   character varying(256) encode lzo,
                                                partiecheckdigit               character varying(256) encode lzo);
                                                
                                                
CREATE TABLE "credit_cards"."credit_cards"(creditcardaccountid character varying(256) encode lzo,
                                           customerid          character varying(256) encode lzo,
                                           organizationid      character varying(256) encode lzo,
                                           organizationname    character varying(256) encode lzo,
                                           name                character varying(100) encode lzo,
                                           producttype         character(100) encode lzo,
                                           creditcardnetwork   character(100) encode lzo);
                                           
CREATE TABLE "credit_cards"."credit_cards_bills"(creditcardaccountid       character varying(256) encode lzo,
                                                 customerid                character varying(256) encode lzo,
                                                 organizationid            character varying(256) encode lzo,
                                                 organizationname          character varying(256) encode lzo,
                                                 billid                    character varying(256) encode lzo,
                                                 duedate                   date encode az64,
                                                 billtotalamount           numeric(16,2) encode az64,
                                                 billtotalamountcurrency   character varying(256) encode lzo,
                                                 billminimumamount         numeric(36,2) encode az64,
                                                 billminimumamountcurrency character varying(256) encode lzo,
                                                 isinstalment              boolean,
                                                 financecharges            character varying(256) encode lzo,
                                                 payments                  character varying(256) encode lzo);
                                                 
                                                 
CREATE TABLE "credit_cards"."credit_cards_bills_transactions"(creditcardaccountid  character varying(256) encode lzo,
                                                              customerid           character varying(256) encode lzo,
                                                              organizationid       character varying(256) encode lzo,
                                                              organizationname     character varying(256) encode lzo,
                                                              transactionid        character varying(256) encode lzo,
                                                              identificationnumber character varying(256) encode lzo,
                                                              transactionname      character varying(256) encode lzo,
                                                              creditdebittype      character varying(256) encode lzo,
                                                              transactiontype      character varying(256) encode lzo,
                                                              paymenttype          character varying(256) encode lzo,
                                                              feetype              character varying(256) encode lzo,
                                                              chargeidentificator  character varying(256) encode lzo,
                                                              chargenumber         character varying(256) encode lzo,
                                                              brazilianamount      numeric(8,2) encode az64,
                                                              amount               numeric(8,2) encode az64,
                                                              currency             character varying(256) encode lzo,
                                                              transactiondate      date encode az64,
                                                              billpostdate         date encode az64,
                                                              payeemcc             character varying(256) encode lzo,
                                                              billid               character varying(256) encode lzo);
                                                              
                                                              
CREATE TABLE "credit_cards"."credit_cards_details"(creditcardaccountid character varying(256) encode lzo,
                                                   customerid          character varying(256) encode lzo,
                                                   organizationid      character varying(256) encode lzo,
                                                   organizationname    character varying(256) encode lzo,
                                                   name                character varying(100) encode lzo,
                                                   producttype         character(100) encode lzo,
                                                   creditcardnetwork   character(100) encode lzo,
                                                   paymentmethod       character varying(256) encode lzo);
                                                   
                                                   
CREATE TABLE "credit_cards"."credit_cards_limits"(creditcardaccountid     character varying(256) encode lzo,
                                                  customerid              character varying(256) encode lzo,
                                                  organizationid          character varying(256) encode lzo,
                                                  organizationname        character varying(256) encode lzo,
                                                  creditlinelimittype     character varying(256) encode lzo,
                                                  consolidationtype       character varying(256) encode lzo,
                                                  identificationnumber    character varying(256) encode lzo,
                                                  islimitflexible         boolean,
                                                  limitamountcurrency     character varying(256) encode lzo,
                                                  limitamount             numeric(16,2) encode az64,
                                                  usedamountcurrency      character varying(256) encode lzo,
                                                  usedamount              numeric(16,2) encode az64,
                                                  availableamountcurrency character varying(256) encode lzo,
                                                  availableamount         numeric(16,2) encode az64);
                                                  
                                                  
CREATE TABLE "credit_cards"."credit_cards_transactions"(creditcardaccountid  character varying(256) encode lzo,
                                                        customerid           character varying(256) encode lzo,
                                                        organizationid       character varying(256) encode lzo,
                                                        organizationname     character varying(256) encode lzo,
                                                        transactionid        character varying(256) encode lzo,
                                                        identificationnumber character varying(256) encode lzo,
                                                        transactionname      character varying(256) encode lzo,
                                                        creditdebittype      character varying(256) encode lzo,
                                                        transactiontype      character varying(256) encode lzo,
                                                        paymenttype          character varying(256) encode lzo,
                                                        feetype              character varying(256) encode lzo,
                                                        chargeidentificator  character varying(256) encode lzo,
                                                        chargenumber         character varying(256) encode lzo,
                                                        brazilianamount      character varying(256) encode lzo,
                                                        amount               character varying(256) encode lzo,
                                                        currency             character varying(256) encode lzo,
                                                        transactiondate      character varying(256) encode lzo,
                                                        billpostdate         character varying(256) encode lzo,
                                                        payeemcc             character varying(256) encode lzo,
                                                        billid               character varying(256) encode lzo);
                                                        
CREATE TABLE "customers"."financial_relation"(customerid                         character varying(256) encode lzo,
                                              organizationid                     character varying(256) encode lzo,
                                              productsservicestype               character varying(256) encode lzo,
                                              productsservicestypeadditionalinfo character varying(256) encode lzo,
                                              accounts                           character varying(2000) encode lzo);
                                              
CREATE TABLE "customers"."personal_identification"(personalid              character varying(256) encode lzo,
                                                   organizationid          character varying(256) encode lzo,
                                                   customerid              character varying(256) encode lzo,
                                                   brandname               character varying(256) encode lzo,
                                                   civilname               character varying(256) encode lzo,
                                                   socialname              character varying(256) encode lzo,
                                                   birtdate                date encode az64,
                                                   sex                     character varying(256) encode lzo,
                                                   maritalstatuscode       character varying(256) encode lzo,
                                                   companycnpj             character varying(256) encode lzo,
                                                   documents               character varying(256) encode lzo,
                                                   otherdocuments          character varying(256) encode lzo,
                                                   hasbraziliannationality character varying(256) encode lzo,
                                                   nationality             character varying(256) encode lzo,
                                                   filiation               character varying(256) encode lzo,
                                                   contacts                character varying(5000) encode lzo);
                                                   
                                                   
CREATE TABLE "customers"."personal_qualification"(customerid            character varying(256) encode lzo,
                                                  organizationid        character varying(256) encode lzo,
                                                  brandname             character varying(256) encode lzo,
                                                  companycnpj           character varying(256) encode lzo,
                                                  occupationcode        character varying(256) encode lzo,
                                                  occupationdescription integer encode az64,
                                                  informedicome         character varying(1000) encode lzo,
                                                  informedpatrimony     character varying(1000) encode lzo);
                                                  
