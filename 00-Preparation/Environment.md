# Environment preparation

## Beschrijving

Voor de training "self-service met Power BI" zijn de volgende zaken nodig:

* Per deelnemer:
  * Een Power BI VM
  * DownloadAndAttachDBs uitgevoerd
  * IE ESC uitgeschakeld
  * Default browser naar Google Chrome gezet
* Per groep
  * Een AAS instance (Developer) met een gevuld sample
  * Studenten moeten toegang krijgen met hun persoonlijke BITrainer.nl-account!

az role assignment create --role Reader --assignee "studentvs@bitrainer.nl" --scope "/subscriptions/22e46556-ee7f-4060-a7dd-c92391e5f82a/resourceGroups/powerbi-training/providers/Microsoft.AnalysisServices/servers/bitrainerpbi"

{
  "create": {
    "parentObject": {
      "database": "adventureworks"
    },
    "role": {
      "name": "Role",
      "modelPermission": "administrator",
      "members": [
        {
          "memberName": "studentvs@bitrainer.nl",
          "identityProvider": "AzureAD"
        }
      ]
    }
  }
}

* Per cursus
  * Cursusmateriaal op GitHub of gedrukt
  * Opdrachten met bijbehorende bronbestanden

