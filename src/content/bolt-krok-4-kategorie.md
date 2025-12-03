# Krok 4: Filtr kategorií

Přidej nad grid horizontální menu s kategoriemi.

## Kategorie

```js
const categories = [
  { id: "all", name: "Všechny články" },
  { id: "navody", name: "Návody" },
  { id: "technologie", name: "Technologie" },
  { id: "novinky", name: "Novinky" }
];
```

## Vzhled

```
[ Všechny články ]  [ Návody ]  [ Technologie ]  [ Novinky ]
     ↑ aktivní (modrý)
```

## Tailwind

- Flex kontejner s mezerami `flex gap-2 flex-wrap`
- Tlačítko: `px-4 py-2 rounded-full`
- Neaktivní: `bg-gray-200 text-gray-700`
- Aktivní: `bg-blue-600 text-white`
- Hover: `hover:bg-gray-300`

## Funkcionalita

1. useState pro aktivní kategorii (default "all")
2. Klik na kategorii změní stav
3. Zatím jen vizuální změna, filtrování v dalším kroku
