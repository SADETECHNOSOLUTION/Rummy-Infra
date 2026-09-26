# Release checklist
- Backup/restore drill is current.
- No P0/P1 test failures.
- Mongo migrations/indexes are compatible before deploy.
- Secrets injected from environment/secret store.
- Staging smoke + Golden Rummy suite passed.
- Razorpay webhook secret verified.
- WebSocket upgrade tested through Nginx.
- Previous JAR/image retained for rollback.
- Post-deploy wallet/payment reconciliation checked.
