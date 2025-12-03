# Krok 5: Stránkování

Přidej pod grid jednoduché stránkování.

## Vzhled

```
  [←]  [ 1 ]  [ 2 ]  [ 3 ]  [→]
         ↑ aktivní stránka
```

## Tailwind

- Flex kontejner centrovaný: `flex justify-center gap-2 mt-8`
- Tlačítko: `w-10 h-10 rounded flex items-center justify-center`
- Neaktivní: `bg-gray-200 hover:bg-gray-300`
- Aktivní: `bg-blue-600 text-white`
- Šipky: použij `←` a `→` nebo SVG ikony

## Funkcionalita

1. useState pro aktuální stránku (default 1)
2. Celkem 3 stránky (hardcoded)
3. Klik změní číslo stránky
4. Šipky disabled na první/poslední stránce

## Kód

```jsx
const [currentPage, setCurrentPage] = useState(1);
const totalPages = 3;

// Vykreslení čísel stránek
{[1, 2, 3].map(page => (
  <button 
    key={page}
    onClick={() => setCurrentPage(page)}
    className={page === currentPage ? "bg-blue-600 text-white" : "bg-gray-200"}
  >
    {page}
  </button>
))}
```
