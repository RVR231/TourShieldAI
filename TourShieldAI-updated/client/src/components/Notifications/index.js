// Export all notification components and utilities
export { default as NotificationManager, TourShieldNotifications } from './NotificationManager';
export { NotificationProvider, useNotifications } from './NotificationProvider';
export {
  useAuthNotifications,
  useKYCNotifications,
  useEmergencyNotifications,
  useSystemNotifications,
  useBlockchainNotifications,
  useScannerNotifications
} from './NotificationHooks';

// Import styles
import './NotificationStyles.css';
