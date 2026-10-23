---
name: scope-guard
description: Check any client request against the contracted scope, flag out-of-scope work, and draft a polite change order with price and timeline. Use whenever a client asks for something new, "quick", or "small".
---

# Scope Guard

## When a request comes in
1. Read `clients/<slug>/SCOPE.md` and `CHANGES.md`.
2. Classify: **IN SCOPE** (cite the line), **IN SCOPE BUT OVER QUANTITY** (e.g. 5th post of 4), **OUT OF SCOPE**, or **UNCLEAR** (ask one clarifying question).
3. Estimate effort in hours and the impact on current deadlines.
4. For over/out of scope, draft (do not send) a change order reply:
> Happy to do this. It's outside our current scope (we have X included). It's about [hours] hours — [price], delivered by [date]. Want me to add it? Alternatively we can swap it for [in-scope item] this month.
5. Log the request in `CHANGES.md`: date, request, classification, quote, status (quoted / approved / declined / swapped).

## Monthly
Summarize CHANGES.md: approved extras billed, unbilled freebies given (hours), and recommend a scope or price adjustment at renewal if freebies > 10% of hours.
