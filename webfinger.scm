(use-modules (json) (ice-9 hash-table))

(scm->json `(("subject" . "acct:alice@my-example.com")
             ("links"   . (,(alist->hash-table
                              '(("rel"  .                         "self")
                                ("type" .    "application/activity+json")
                                ("href" . "https://my-example.com/actor")))))))
