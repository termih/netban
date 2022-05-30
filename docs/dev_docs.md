# Netban

## Cél

Internet tiltása termenként vagy gépenként.

## Alapkönyvtár

* /api/

Egy végpont elérése:

```url
http://valahol/api/vegpont
```

## Végpontok

| Végpont                     | Metódus | Auth   | Leírás        |
|-----------------------------|---------|--------|---------------|
| register                    | post    | nem    | Add user      |
| login                       | post    | nem    | Login user    |
| setnet/{terem}/{host}/{act} | post    | igen   | Setting host  |
| getnet/{terem}/{host}       | get     | igen   | Get host info |

Paraméterek:

* {terem} - helység, ahol szabályozni szeretnénk az Internetelérést
* {host}  - gép, amin szabályozi szeretnénk az Internetelérést
* {act} - akció; internet engedélyezése vagy tiltása; 1 vagy 0

A tantermek és a gépnevek vezető nullákkal ellátott számok, kétszámjeggyel.
Például: 08
