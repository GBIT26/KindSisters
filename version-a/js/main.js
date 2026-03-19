/* ============================================
   Kind Sisters Website - JavaScript
   Vanilla JS, no dependencies (aside from Bootstrap's bundled JS)

   All functionality is written in plain JavaScript to keep the site
   lightweight and avoid framework overhead. The DOMContentLoaded event
   ensures the DOM is fully parsed before we attach event listeners.
   ============================================ */

document.addEventListener('DOMContentLoaded', () => {

  /* ---- Quick Exit ----
     A critical safety feature for domestic violence (DV) support websites.
     Many users visiting this site may be in unsafe situations — the Quick Exit
     button immediately navigates away to a neutral page (Google).

     Three methods are used in sequence for maximum reliability:
     1. window.open('...', '_self') — replaces the current tab content
     2. history.replaceState() — overwrites the browser history entry so
        pressing the Back button won't return to this site
     3. window.location.replace() — fallback redirect that also avoids
        creating a new history entry

     The replaceState call is especially important: without it, someone
     could press Back and see the Kind Sisters page in the browser history,
     which could put the user at risk. */
  const quickExit = document.getElementById('quickExit');
  if (quickExit) {
    quickExit.addEventListener('click', (e) => {
      e.preventDefault();
      window.open('https://www.google.com', '_self');
      history.replaceState(null, '', 'https://www.google.com');
      window.location.replace('https://www.google.com');
    });
  }

  /* ---- Triple-Escape Keyboard Shortcut ----
     An alternative Quick Exit trigger for keyboard users or situations where
     moving the mouse to the button isn't feasible. Pressing Escape three times
     within 1 second triggers the exit.

     Why triple-press instead of single? A single Escape press is too easy to
     trigger accidentally (e.g. closing a dropdown). Three presses is intentional
     but still fast enough in an emergency. The 1-second timeout window resets
     the counter if the user pauses, preventing false triggers. */
  let escCount = 0;
  let escTimer = null;
  document.addEventListener('keydown', (e) => {
    if (e.key === 'Escape') {
      escCount++;
      if (escCount >= 3) {
        window.location.replace('https://www.google.com');
      }
      clearTimeout(escTimer);
      escTimer = setTimeout(() => { escCount = 0; }, 1000);
    }
  });

  /* ---- Testimonial Card Expand/Collapse ----
     Implements an accordion-style interaction on the "Stories of Hope" cards.
     Clicking a card expands it to reveal the full testimonial text; clicking
     again (or clicking another card) collapses it.

     Only one card can be expanded at a time — this keeps the layout compact
     and focused on one story.

     Accessibility considerations:
     - role="button" tells screen readers the card is interactive
     - tabindex="0" makes the card keyboard-focusable
     - aria-expanded tracks the open/closed state for assistive technology
     - Enter and Space key handlers match native button behaviour */
  const testimonialCards = document.querySelectorAll('[data-testimonial]');
  testimonialCards.forEach(card => {
    card.addEventListener('click', () => {
      const isExpanded = card.classList.contains('expanded');
      // Collapse all cards first (accordion behaviour — only one open at a time)
      testimonialCards.forEach(c => {
        c.classList.remove('expanded');
        c.setAttribute('aria-expanded', 'false');
      });
      // Expand the clicked card if it wasn't already open
      if (!isExpanded) {
        card.classList.add('expanded');
        card.setAttribute('aria-expanded', 'true');
      }
    });
    // Set ARIA attributes for accessibility
    card.setAttribute('role', 'button');
    card.setAttribute('tabindex', '0');
    card.setAttribute('aria-expanded', 'false');
    // Keyboard support — Enter and Space trigger the click handler
    card.addEventListener('keydown', (e) => {
      if (e.key === 'Enter' || e.key === ' ') {
        e.preventDefault();
        card.click();
      }
    });
  });

  /* ---- Donation Frequency Toggle ----
     Switches between "Donate Once" and "Donate Monthly" modes.
     The active class controls visual styling (filled vs outlined button).
     This toggle is also handled in the donate.html inline script where
     it sets the donationType variable used by the Stripe checkout flow. */
  const donateOnceBtn = document.getElementById('donateOnce');
  const donateMonthlyBtn = document.getElementById('donateMonthly');
  if (donateOnceBtn && donateMonthlyBtn) {
    donateOnceBtn.addEventListener('click', () => {
      donateOnceBtn.classList.add('active');
      donateMonthlyBtn.classList.remove('active');
    });
    donateMonthlyBtn.addEventListener('click', () => {
      donateMonthlyBtn.classList.add('active');
      donateOnceBtn.classList.remove('active');
    });
  }

  /* ---- Donation Amount Selection ----
     Pre-set amount buttons ($10, $25, $50) plus a custom "Other" option.
     Clicking a preset amount deselects all others and hides the custom input.
     Clicking "Other" reveals a number input for any amount.
     The active class provides visual feedback on which amount is selected. */
  const amountBtns = document.querySelectorAll('.amount-btn');
  const customAmountWrap = document.getElementById('customAmountWrap');
  amountBtns.forEach(btn => {
    btn.addEventListener('click', () => {
      // Deselect all amount buttons
      amountBtns.forEach(b => b.classList.remove('active'));
      // Select the clicked button
      btn.classList.add('active');
      // Show/hide the custom amount input based on the "other" option
      if (btn.dataset.amount === 'other' && customAmountWrap) {
        customAmountWrap.style.display = 'block';
      } else if (customAmountWrap) {
        customAmountWrap.style.display = 'none';
      }
    });
  });

  /* ---- Mobile Nav: Auto-close on Link Click ----
     On mobile, Bootstrap's navbar collapses into a hamburger menu.
     By default, clicking a nav link doesn't close the menu — the user
     has to manually tap the hamburger again. This handler auto-closes
     the menu after a link is clicked for a smoother mobile experience. */
  const navLinks = document.querySelectorAll('#mainNav .nav-link');
  const navCollapse = document.getElementById('mainNav');
  if (navCollapse) {
    navLinks.forEach(link => {
      link.addEventListener('click', () => {
        const bsCollapse = bootstrap.Collapse.getInstance(navCollapse);
        if (bsCollapse) bsCollapse.hide();
      });
    });
  }

  /* ---- Active Nav Highlight ----
     Determines the current page from the URL pathname and adds the .active
     class to the matching nav link. This provides a visual indicator of
     which page the user is on. Also sets aria-current="page" for screen
     readers to announce the current page in the navigation. */
  const currentPage = window.location.pathname.split('/').pop() || 'index.html';
  document.querySelectorAll('.ks-header .nav-link').forEach(link => {
    const href = link.getAttribute('href');
    if (href === currentPage) {
      link.classList.add('active');
      link.setAttribute('aria-current', 'page');
    }
  });

  /* ---- Scroll Fade-in Animations (IntersectionObserver) ----
     Elements with the .fade-in class start invisible (opacity: 0) and
     shifted down 20px (defined in CSS). When they scroll into view,
     the observer adds .visible which transitions them to full opacity
     and their natural position.

     IntersectionObserver is used instead of scroll event listeners because:
     - It's more performant (no continuous scroll handler firing)
     - It's natively throttled by the browser
     - threshold: 0.1 triggers when 10% of the element is visible

     observer.unobserve() is called after each element appears so it only
     animates once — re-scrolling past an element doesn't re-trigger it.

     The 'IntersectionObserver' in window check provides a fallback for
     very old browsers — elements will just appear without animation. */
  const fadeEls = document.querySelectorAll('.fade-in');
  if (fadeEls.length > 0 && 'IntersectionObserver' in window) {
    const observer = new IntersectionObserver((entries) => {
      entries.forEach(entry => {
        if (entry.isIntersecting) {
          entry.target.classList.add('visible');
          observer.unobserve(entry.target); // Only animate once per element
        }
      });
    }, { threshold: 0.1 });
    fadeEls.forEach(el => observer.observe(el));
  }

  /* ---- Gallery Lightbox ----
     A custom full-screen image viewer for the projects gallery page.
     Built from scratch rather than using a library to keep dependencies minimal.

     Features:
     - Click any gallery image to open it full-screen
     - Previous/Next navigation with wrapping (last image -> first image)
     - Close by clicking the X button, clicking the backdrop, or pressing Escape
     - Arrow key navigation (Left/Right) when the lightbox is open
     - Body scroll is locked while open to prevent background scrolling

     Accessibility: gallery images are given role="button" and tabindex="0"
     so keyboard users can open them with Enter. */
  const lightbox = document.getElementById('lightbox');
  const lightboxImg = document.getElementById('lightboxImg');
  const galleryImages = document.querySelectorAll('.gallery-grid img');
  let currentImgIndex = 0;

  /* Opens the lightbox at a specific image index.
     Sets the image source, shows the overlay, and locks body scroll. */
  function openLightbox(index) {
    if (!lightbox || !lightboxImg || galleryImages.length === 0) return;
    currentImgIndex = index;
    lightboxImg.src = galleryImages[index].src;
    lightboxImg.alt = galleryImages[index].alt;
    lightbox.classList.add('active');
    document.body.style.overflow = 'hidden'; // Prevent background scrolling
  }

  /* Closes the lightbox and restores body scroll */
  function closeLightbox() {
    if (!lightbox) return;
    lightbox.classList.remove('active');
    document.body.style.overflow = '';
  }

  // Attach click and keyboard handlers to each gallery image
  galleryImages.forEach((img, i) => {
    img.addEventListener('click', () => openLightbox(i));
    img.setAttribute('role', 'button');
    img.setAttribute('tabindex', '0');
    img.addEventListener('keydown', (e) => {
      if (e.key === 'Enter') openLightbox(i);
    });
  });

  // Lightbox controls — only set up if the lightbox element exists in the DOM
  if (lightbox) {
    // Close button
    lightbox.querySelector('.lightbox-close')?.addEventListener('click', closeLightbox);

    // Previous image — uses modulo arithmetic to wrap from first to last
    lightbox.querySelector('.lightbox-prev')?.addEventListener('click', (e) => {
      e.stopPropagation(); // Prevent the backdrop click handler from closing
      currentImgIndex = (currentImgIndex - 1 + galleryImages.length) % galleryImages.length;
      lightboxImg.src = galleryImages[currentImgIndex].src;
      lightboxImg.alt = galleryImages[currentImgIndex].alt;
    });

    // Next image — wraps from last to first
    lightbox.querySelector('.lightbox-next')?.addEventListener('click', (e) => {
      e.stopPropagation();
      currentImgIndex = (currentImgIndex + 1) % galleryImages.length;
      lightboxImg.src = galleryImages[currentImgIndex].src;
      lightboxImg.alt = galleryImages[currentImgIndex].alt;
    });

    // Clicking the dark backdrop (not the image) closes the lightbox
    lightbox.addEventListener('click', (e) => {
      if (e.target === lightbox) closeLightbox();
    });

    // Keyboard navigation — Escape closes, Arrow keys navigate
    document.addEventListener('keydown', (e) => {
      if (!lightbox.classList.contains('active')) return;
      if (e.key === 'Escape') closeLightbox();
      if (e.key === 'ArrowLeft') lightbox.querySelector('.lightbox-prev')?.click();
      if (e.key === 'ArrowRight') lightbox.querySelector('.lightbox-next')?.click();
    });
  }

  /* ---- Form Validation ----
     Lightweight client-side email validation applied to all forms on the site.
     Uses a standard regex pattern that checks for the basic format: text@text.text

     This is intentionally simple — it catches obvious typos (missing @, no domain)
     without being overly strict. Server-side validation (via Formspree) provides
     the real validation; this is just for immediate user feedback.

     Bootstrap's .is-invalid class is toggled to show/hide the validation state,
     keeping the visual treatment consistent with Bootstrap's form validation styles. */
  const forms = document.querySelectorAll('form');
  forms.forEach(form => {
    form.addEventListener('submit', (e) => {
      const emailInput = form.querySelector('input[type="email"]');
      if (emailInput && emailInput.value) {
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(emailInput.value)) {
          e.preventDefault(); // Stop form submission if email is invalid
          emailInput.classList.add('is-invalid');
          return;
        }
        emailInput.classList.remove('is-invalid');
      }
    });
  });

});
