# オブジェクト指向設計実践ガイド

## 「第4章 柔軟なインターフェースをつくる」より

**要件**
旅行が開始されるためには、使われる自転車がすべて整備されていることを確実にする必要がある

```mermaid
sequenceDiagram
    participant trip as a Trip
    participant mechanic as a Mechanic
    trip-->>trip: bicycles
    activate trip
    Note over trip: for each bicycle
    deactivate trip
    trip->>+mechanic:clean_bicycle(bike)
    mechanic-->>-trip: response
    trip->>+mechanic:pump_tires(bike)
    mechanic-->>-trip: response
    trip->>+mechanic:lube_chain(bike)
    mechanic-->>-trip: response
    trip->>+mechanic:check_brakes(bike)
    mechanic-->>-trip: response
```

問題: TripがMechanicを知りすぎている

```mermaid
sequenceDiagram
    participant trip as a Trip
    participant mechanic as a Mechanic
    trip-->>trip: bicycles
    activate trip
    Note over trip: for each bicycle
    deactivate trip
    trip->>+mechanic:prepare_bicycle(bike)
    mechanic->>+mechanic:clean_bicycle(bike)
    activate mechanic
    Note Over mechanic: etc...
    deactivate mechanic
    mechanic-->>-trip: response
```

mechanicのpubli interfaceはprepare_bicycleだけになった。

```mermaid
sequenceDiagram
    participant trip as a Trip
    participant mechanic as a Mechanic
    trip-->>+mechanic: prepare_trip(self)
    mechanic-->>-trip: bicycles
    activate trip
    deactivate trip
    trip-->>+mechanic: 
    activate mechanic
    Note Over mechanic: for each bicycle
    mechanic->>mechanic:prepare_bicycle(bike)
    deactivate mechanic
    mechanic-->>trip: response

```

- Tripのパプリックインターフェースはbicyclesを含む
- Mechanicのパブリックインターフェースはprepare_tripを含む。ひょっとするとprepare_bicyclesも含みうる
- Tripはprepare_tripに応答できるオブジェクトを持ち続ける事を想定する
- Mechanicはprepare_tripとともに渡されてきた引数がbicyclesに応答する事を想定する

```mermaid
sequenceDiagram
participant moe as Moe Customer
participant tripfinder as a Trip Finder
participant trip as a Trip
participant bike as class Bicycle
moe-->>+tripfinder: suitable_trips(on_date, of_difficulty, need_bike)
tripfinder-->>+trip: suitable_trips(on_date, of_difficulty)
trip-->>-tripfinder: 
activate tripfinder
Note Over tripfinder: for each trip find
deactivate tripfinder
tripfinder-->>+bike: suitable_bicycle(trip_date, route_type)
bike-->>-tripfinder: 
tripfinder-->>-moe: 
```

tripfinderのpublic interfaceはsuitable_tripsだけになった。
