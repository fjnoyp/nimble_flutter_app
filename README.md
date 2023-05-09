# nimble_flutter_app

Mini sample app for practicing with Riverpod state management. 

## Overview

- Users can tap on a pharmacy name to view details such as name, address, phone number, and hours.
- There is a button to start ordering from the closest pharmacy based on user's location.
- Users can select medication(s) from a given set and complete the order by tapping a confirmation button.
- The app records the selected medications locally for the chosen pharmacy.
- A check mark next to a pharmacy's name indicates the user has placed an order with them.
- Users cannot order from the same pharmacy more than once.


## Technical Overview

State management: Riverpod
Architecture: Clean Architecture 
Routing: Go Router - used declarative routing to support possible future web navigation

/data: 
Contains repository files that fetch and store API and config data. 

/domain:
Contains model files that represent fetched data. 

/presentation:
Contains view and controller files for presenting and modifying data. 



