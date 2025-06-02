# Bot per Pizzerie Multilingua - MVP

## Panoramica

Questo repository contiene l'MVP (Minimum Viable Product) di un bot per pizzerie multilingua, sviluppato secondo le specifiche richieste. Il bot supporta italiano, russo e inglese, ed è progettato per funzionare su WhatsApp e Telegram.

## Caratteristiche Principali

- **Supporto Multilingua**: Interfaccia completa in italiano, russo e inglese con rilevamento automatico della lingua
- **Menu Interattivo**: Visualizzazione di categorie e prodotti con descrizioni e prezzi
- **Gestione Carrello**: Aggiunta, rimozione e modifica degli elementi nel carrello
- **Opzioni di Consegna**: Scelta tra consegna a domicilio o ritiro in negozio
- **Pagamenti Online**: Integrazione con Stripe e Satispay per pagamenti sicuri
- **Notifiche**: Aggiornamenti automatici sullo stato dell'ordine
- **Architettura Scalabile**: Progettata per facilitare l'aggiunta di nuove funzionalità e lingue

## Struttura del Repository

```
/
├── src/                      # Codice sorgente
│   ├── config.py             # Configurazioni generali
│   ├── translations.py       # Gestore traduzioni
│   ├── database.py           # Interfaccia database
│   ├── order_manager.py      # Gestione ordini
│   └── conversation_manager.py # Gestione conversazioni
├── tests/                    # Test unitari
│   └── test_validation.py    # Test di validazione
└── docs/                     # Documentazione
    ├── technical_doc.md      # Documentazione tecnica
    └── user_manual.md        # Manuale utente
```

## Documentazione

- **Documentazione Tecnica**: Dettagli sull'architettura, flussi, database e integrazioni
- **Manuale Utente**: Guida all'uso del bot per proprietari di pizzerie e clienti

## Requisiti

- Python 3.8+
- SQLite (per MVP) o PostgreSQL (per produzione)
- Accesso alle API di WhatsApp Business e Telegram
- Account Stripe e/o Satispay per pagamenti

## Configurazione e Deployment

Consultare la documentazione tecnica per istruzioni dettagliate su configurazione e deployment.

## Sviluppi Futuri

Il bot è progettato per essere facilmente estendibile con:
- Programma fedeltà
- Sistema di referral
- Integrazione con sistemi POS
- Funzionalità AI per risposte intelligenti e upselling
- Supporto per lingue aggiuntive

## Contatti

Per assistenza o informazioni aggiuntive, contattare il team di sviluppo.
