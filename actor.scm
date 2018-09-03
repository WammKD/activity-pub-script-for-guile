(use-modules (json) (ice-9 hash-table))

(scm->json `(("@context"          . ("https://www.w3.org/ns/activitystreams"
                                     "https://w3id.org/security/v1"))
             ("id"                . "https://my-example.com/actor")
             ("type"              . "Person")
             ("preferredUsername" . "alice")
             ("publicKey"         . ,(alist->hash-table
                                       '(("id"           . "https://my-example.com/actor#main-key")
                                         ("owner"        . "https://my-example.com/actor")
                                         ("publicKeyPem" . "-----BEGIN PUBLIC KEY-----...-----END PUBLIC KEY-----"))))))
