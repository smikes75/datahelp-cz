# Design System - DataHelp.cz

Kompletní přehled grafického stylu a design systému pro redesign dalších webů.

---

## 🎨 Barevná Paleta

### Primární Barvy (Modrá)
```
Primary (Hlavní modrá):     #1B387A
Primary Light (Světlá):     #2647A0
Primary Dark (Tmavá):       #142960
```

**Použití:**
- Hlavní navigace a záhlaví
- Primární tlačítka
- Důležité texty a nadpisy
- Brand identita

### Akcentové Barvy (Oranžová)
```
Accent (Hlavní oranžová):   #F49E00
Accent Light (Světlá):      #FFB52E
Accent Dark (Tmavá):        #CC8400
```

**Použití:**
- Call-to-action tlačítka
- Zvýraznění důležitých prvků
- Hover stavy
- Ikony a ilustrace
- Focus indikátory

### Neutrální Barvy
```
Bílá:                       #FFFFFF
Světle šedá:                #F9FAFB
Šedá (border):              #E5E7EB
Středně šedá (text):        #6B7280
Tmavě šedá:                 #374151
Černá (text):               #111827
```

### Scrollbar
```
Track:                      #F1F1F1
Thumb:                      #1B387A (primary)
Thumb Hover:                #142960 (primary-dark)
Width:                      8px
Border Radius:              4px
```

---

## 📝 Typografie

### Font Family
```css
font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
```

**Výchozí systémové fonty** pro optimální výkon a čitelnost napříč platformami.

### Velikosti Písma

#### Desktop
```
Heading 1:    2.5rem (40px) / bold
Heading 2:    2rem (32px) / bold
Heading 3:    1.5rem (24px) / semibold
Heading 4:    1.25rem (20px) / semibold
Body Large:   1.25rem (20px) / normal
Body:         1rem (16px) / normal
Small:        0.875rem (14px) / normal
Extra Small:  0.75rem (12px) / normal
```

#### Mobile (< 640px)
```
Small Text:   1rem (16px) / medium (+ 14% větší)
Extra Small:  0.875rem (14px) / medium (+ 17% větší)
Base Text:    1.0625rem (17px) / normal
```

**Poznámka:** Mobilní texty jsou záměrně větší a tučnější (font-weight: 450-500) pro lepší čitelnost na malých displejích.

### Line Height (Řádkování)
```
Nadpisy:      1.2 (120%)
Tělo textu:   1.5 (150%)
Malý text:    1.4 (140%)
```

### Font Weights
```
Normal:       400
Medium:       500
Semibold:     600
Bold:         700
```

**Maximálně 3 váhy písma** na projektu pro konzistenci.

---

## 🔘 Komponenty

### Tlačítka

#### Primary Button (Modrá)
```css
background: #1B387A
color: #FFFFFF
padding: 0.75rem 1.5rem (12px 24px)
border-radius: 8px
font-weight: 600
transition: all 0.2s ease

hover:
  background: #2647A0
  transform: translateY(-1px)
```

#### Accent Button (Oranžová - CTA)
```css
background: #F49E00
color: #FFFFFF
padding: 0.75rem 1.5rem
border-radius: 8px
font-weight: 600
box-shadow: 0 2px 8px rgba(244, 158, 0, 0.2)
transition: all 0.2s ease

hover:
  background: #FFB52E
  box-shadow: 0 4px 12px rgba(244, 158, 0, 0.3)
  transform: translateY(-1px)
```

#### Secondary Button (Outline)
```css
border: 2px solid #FFFFFF
color: #FFFFFF
background: transparent
padding: 0.75rem 1.5rem
border-radius: 8px
font-weight: 600
transition: all 0.2s ease

hover:
  background: #FFFFFF
  color: #1B387A
```

### Formulářové Prvky

#### Input Fields
```css
border: 1px solid #E5E7EB
border-radius: 8px
padding: 0.75rem 1rem
font-size: 1rem
transition: border 0.2s ease

focus:
  outline: 2px solid #F49E00
  outline-offset: 2px
  box-shadow: 0 0 0 3px rgba(244, 158, 0, 0.1)
```

#### Textarea
```css
stejné jako Input Fields
min-height: 120px
resize: vertical
```

### Cards & Containers
```css
background: #FFFFFF
border-radius: 8px
box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1)
padding: 1.5rem
border: 1px solid #E5E7EB
transition: all 0.2s ease

hover:
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15)
  transform: translateY(-2px)
```

### Accent Border Element
```css
border: 2px solid #F49E00
border-radius: 8px
box-shadow: 0 2px 8px rgba(244, 158, 0, 0.15)
transition: all 0.2s ease

hover:
  border-color: #FFB52E
  box-shadow: 0 4px 12px rgba(244, 158, 0, 0.25)
  transform: translateY(-1px)
```

### Alert/Warning Box (Oranžová)
```css
background: rgba(244, 158, 0, 0.08)
border: 1px solid rgba(244, 158, 0, 0.2)
border-radius: 8px
padding: 16px
box-shadow: 0 2px 4px rgba(244, 158, 0, 0.1)
```

### Alert Box s Left Border
```css
border-left: 4px solid #F49E00
background: rgba(244, 158, 0, 0.05)
border-radius: 0 8px 8px 0
padding: 16px
box-shadow: 0 1px 3px rgba(244, 158, 0, 0.1)
```

---

## 🎯 Ikony

### Knihovna
```
lucide-react (npm package)
```

### Velikosti
```
Extra Large:  3rem (48px) - Hero sekce
Large:        2rem (32px) - Feature ikony
Medium:       1.5rem (24px) - Navigace, karty
Small:        1rem (16px) - Inline ikony
```

### Barvy Ikon
```
Primary:      #1B387A
Accent:       #F49E00
White:        #FFFFFF (na tmavém pozadí)
Gray:         #6B7280
```

### Příklady Použitých Ikon
```
Menu:         <Menu />
Close:        <X />
Shield:       <ShieldCheck />
CPU:          <Cpu />
Trophy:       <Trophy />
```

---

## 📐 Spacing System (8px Grid)

```
xs:    0.25rem (4px)
sm:    0.5rem (8px)
md:    1rem (16px)
lg:    1.5rem (24px)
xl:    2rem (32px)
2xl:   3rem (48px)
3xl:   4rem (64px)
4xl:   6rem (96px)
```

**Pravidlo:** Veškeré odsazení, marginy a padding používají násobky 8px.

---

## 🎭 Animace a Transitions

### Standard Transition
```css
transition: all 0.2s ease
```

### Hover Effects
```css
transform: translateY(-2px)
box-shadow: zvětšení stínu
```

### Scrolling Animation (Banner)
```css
@keyframes scroll {
  0%: transform: translateX(0)
  100%: transform: translateX(-50%)
}
animation: scroll 25s linear infinite
```

### Smooth Scrolling
```css
html {
  scroll-behavior: smooth;
}
```

---

## 🎯 Focus States (Přístupnost)

### Výchozí Focus (Formuláře, Tlačítka)
```css
outline: 2px solid #F49E00
outline-offset: 2px
border-radius: 8px
box-shadow: 0 0 0 3px rgba(244, 158, 0, 0.1)
```

### Navigační Linky (Jemný Focus)
```css
outline: none
background: rgba(244, 158, 0, 0.08)
border-radius: 8px
box-shadow: 0 2px 4px rgba(244, 158, 0, 0.1)
transition: all 0.2s ease
```

---

## 📱 Responsive Breakpoints

```css
sm:  640px   /* Telefony na výšku */
md:  768px   /* Tablety */
lg:  1024px  /* Menší laptopy */
xl:  1280px  /* Desktopy */
2xl: 1536px  /* Velké obrazovky */
```

### Mobile-First Approach
Všechny styly jsou primárně pro mobil, pak rozšířeny pomocí `@media (min-width: ...)`.

---

## 🖼️ Hero Sekce

### Desktop
```css
background: Gradient overlay přes obrázek
gradient: linear-gradient(
  to right,
  rgba(27, 56, 122, 1) 0%,
  rgba(27, 56, 122, 0.95) 40%,
  rgba(27, 56, 122, 0.3) 70%,
  rgba(27, 56, 122, 0) 100%
)
object-position: 55% center
```

### Mobile
```css
background: Plný #1B387A (bez obrázku)
padding: 4rem 0
```

---

## 📋 Header/Navigace

### Sticky Header
```css
position: fixed
top: 0
z-index: 50
transition: all 0.3s ease

při scrollu:
  background: rgba(255, 255, 255, 0.95)
  backdrop-filter: blur(8px)
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1)

hide při scrollu dolů (> 100px)
show při scrollu nahoru
```

### Navigační Odkazy
```css
font-weight: 700 (bold)
color: #6B7280 (default)
color: #F49E00 (active)

hover:
  color: #F49E00
```

---

## 🔒 Shadow System

```css
Small:    0 1px 3px rgba(0, 0, 0, 0.1)
Medium:   0 2px 8px rgba(0, 0, 0, 0.1)
Large:    0 4px 12px rgba(0, 0, 0, 0.15)

Accent Small:  0 2px 8px rgba(244, 158, 0, 0.2)
Accent Medium: 0 4px 12px rgba(244, 158, 0, 0.3)
```

---

## 🎨 Border Radius

```
Small:    4px   (scrollbar)
Default:  8px   (většina prvků)
Large:    12px  (velké karty)
```

---

## ♿ Accessibility (Přístupnost)

### Minimum Touch Targets (Mobile)
```css
@media (max-width: 768px) {
  button, a {
    min-height: 44px
    min-width: 44px
  }
}
```

### Color Contrast
- Text na bílém pozadí: min. 4.5:1
- Velký text (18px+): min. 3:1
- Primární modrá (#1B387A) má dostatečný kontrast s bílou
- Oranžová (#F49E00) se nepoužívá pro malý text na bílé

### ARIA Labels
```html
<button aria-label="Toggle menu">
```

---

## 🚀 Performance

### Image Optimization
```
Formát: WebP (fallback: JPG)
Lazy loading: loading="lazy"
Správná velikost: object-fit: cover
```

### CSS Loading
```
Critical CSS inline v <head>
Tailwind CSS optimalizován (purge)
```

---

## 📦 Technology Stack

```
Framework:     React 18.3
CSS:           Tailwind CSS 3.4
Icons:         Lucide React 0.344
Routing:       React Router DOM 6.22
i18n:          i18next 23.10
Build:         Vite 5.4
```

---

## 🎯 Key Design Principles

1. **Jednoduchost** - Čistý, minimalistický design
2. **Konzistence** - Jednotný 8px grid systém
3. **Přístupnost** - WCAG 2.1 AA standardy
4. **Performance** - Optimalizované obrázky a rychlé načítání
5. **Mobile-First** - Primárně pro mobilní zařízení
6. **Brand Identity** - Modrá (#1B387A) + Oranžová (#F49E00)

---

## 🔧 Utility Classes (Tailwind)

### Spacing
```
p-4    = padding: 1rem (16px)
m-4    = margin: 1rem (16px)
gap-4  = gap: 1rem (16px)
```

### Typography
```
text-sm     = 0.875rem (14px)
text-base   = 1rem (16px)
text-lg     = 1.125rem (18px)
text-xl     = 1.25rem (20px)
```

### Colors
```
text-primary      = color: #1B387A
bg-primary        = background: #1B387A
text-accent       = color: #F49E00
bg-accent         = background: #F49E00
```

---

## 📝 Poznámky pro Vývojáře

### FAQ Specifika
FAQ sekce má **zcela odlišný styling** - bez oranžových rámečků, pouze šedé oddělující čáry:
```css
.faq-container {
  background: white;
  border: 1px solid #e5e7eb;
  /* žádná oranžová! */
}
```

### Mobile Font Boost
Na malých displejích (< 640px) jsou fonty záměrně větší a tučnější pro lepší čitelnost:
```css
text-sm:   1rem (místo 0.875rem)
font-weight: 500 (medium)
```

---

**Datum:** 2025-11-04
**Projekt:** DataHelp.cz
**Verze:** 1.0
